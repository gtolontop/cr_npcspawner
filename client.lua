local npcList = {}
local PedActivateDistance = Config.PedActivateDistance or 100.0
local TextDrawDistance    = Config.TextDrawDistance    or 15.0
local Debug               = Config.Debug               or false

local function log(msg)
    if Debug then
        print("^3[NPC-SPAWNER] " .. msg .. "^0")
    end
end

local function loadModel(hash, timeout)
    timeout = timeout or 10000
    if not IsModelInCdimage(hash) or not IsModelValid(hash) then
        print("^1[NPC-SPAWNER] Invalid model: " .. hash .. "^0")
        return false
    end
    RequestModel(hash)
    local start = GetGameTimer()
    while not HasModelLoaded(hash) do
        if GetGameTimer() - start > timeout then
            print("^1[NPC-SPAWNER] Model load timeout: " .. hash .. "^0")
            return false
        end
        Wait(1)
    end
    return true
end

local function loadAnimDict(dict, timeout)
    timeout = timeout or 10000
    RequestAnimDict(dict)
    local start = GetGameTimer()
    while not HasAnimDictLoaded(dict) do
        if GetGameTimer() - start > timeout then
            print("^1[NPC-SPAWNER] AnimDict load timeout: " .. dict .. "^0")
            return false
        end
        Wait(1)
    end
    return true
end

function updateNPCText(i)
    local cfg = Config.NPCTable[i]
    local data = npcList[i]
    if cfg and data and cfg.texts and #cfg.texts > 0 then
        data.text = cfg.texts[math.random(#cfg.texts)]
        log("Text updated for NPC #" .. i .. ": " .. data.text)
        Citizen.SetTimeout(math.random(5000, 15000), function() updateNPCText(i) end)
    end
end

local function spawnNPC(i)
    local cfg  = Config.NPCTable[i]
    local hash = GetHashKey(cfg.model)
    if not loadModel(hash) then return end
    local pos = cfg.coords
    local ped = CreatePed(4, hash, pos.x, pos.y, pos.z - 1.0, pos.w, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    if cfg.hasAnimation and cfg.animDict and cfg.animName then
        if loadAnimDict(cfg.animDict) then
            TaskPlayAnim(ped, cfg.animDict, cfg.animName, 8.0, -8.0, -1, 1, 0, false, false, false)
            log("Animation started for NPC #" .. i)
        end
    end
    npcList[i] = { ped = ped, text = nil }
    updateNPCText(i)
    log("Spawned NPC #" .. i .. " (" .. cfg.model .. ")")
end

local function deleteNPC(i)
    local data = npcList[i]
    if data and DoesEntityExist(data.ped) then
        DeleteEntity(data.ped)
    end
    npcList[i] = nil
    log("Deleted NPC #" .. i)
end

Citizen.CreateThread(function()
    while true do
        local sleep     = 2000
        local playerPos = GetEntityCoords(PlayerPedId())
        for i, cfg in ipairs(Config.NPCTable) do
            local dist = #(playerPos - vector3(cfg.coords.x, cfg.coords.y, cfg.coords.z))
            if dist < PedActivateDistance then
                if not npcList[i] then spawnNPC(i) end
            elseif dist > PedActivateDistance + 20 then
                if npcList[i] then deleteNPC(i) end
            end
        end
        Wait(sleep)
    end
end)

Citizen.CreateThread(function()
    while true do
        local sleep     = 1000
        local playerPos = GetEntityCoords(PlayerPedId())
        for _, data in pairs(npcList) do
            if DoesEntityExist(data.ped) and data.text then
                local coords = GetEntityCoords(data.ped)
                if #(playerPos - coords) < TextDrawDistance then
                    sleep = 0
                    local onScreen, _x, _y = World3dToScreen2d(coords.x, coords.y, coords.z + 1.0)
                    if onScreen then
                        SetTextScale(0.35, 0.35)
                        SetTextFont(4)
                        SetTextProportional(1)
                        SetTextCentre(true)
                        SetTextDropshadow(1, 1, 1, 1, 255)
                        SetTextOutline()
                        SetTextEntry("STRING")
                        AddTextComponentString(data.text)
                        EndTextCommandDisplayText(_x, _y)
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

RegisterCommand("npcreload", function()
    for i, _ in pairs(npcList) do deleteNPC(i) end
    Wait(1000)
    for i, _ in ipairs(Config.NPCTable) do spawnNPC(i) end
    print("^2[NPC-SPAWNER] NPCs reloaded^0")
end)

AddEventHandler("onResourceStop", function(res)
    if res == GetCurrentResourceName() then
        for i, _ in pairs(npcList) do deleteNPC(i) end
    end
end)

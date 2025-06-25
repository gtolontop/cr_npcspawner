local npcList = {}
local function loadModel(hash, timeout)
    timeout = timeout or 10000
    if not IsModelInCdimage(hash) or not IsModelValid(hash) then
        print("^1[NPC-SPAWNER] Modèle invalide : " .. hash .. "^0")
        return false
    end
    RequestModel(hash)
    local start = GetGameTimer()
    while not HasModelLoaded(hash) do
        if GetGameTimer() - start > timeout then
            print("^1[NPC-SPAWNER] Échec chargement modèle : " .. hash .. "^0")
            return false
        end
        Wait(1)
    end
    return true
end
local function loadAnimDict(dict, timeout)
    timeout = timeout or 10000
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
        local start = GetGameTimer()
        while not HasAnimDictLoaded(dict) do
            if GetGameTimer() - start > timeout then
                print("^1[NPC-SPAWNER] Échec chargement animDict : " .. dict .. "^0")
                return false
            end
            Wait(1)
        end
    end
    return true
end
function updateNPCText(index)
    local cfg = Config.NPCTable[index]
    local data = npcList[index]
    if cfg and data and cfg.texts and #cfg.texts > 0 then
        data.text = cfg.texts[math.random(#cfg.texts)]

        Citizen.SetTimeout(math.random(5000,15000), function()
            updateNPCText(index)
        end)
    end
end

Citizen.CreateThread(function()
    for i, npc in ipairs(Config.NPCTable) do
        Citizen.CreateThread(function()
            local hash = GetHashKey(npc.model)
            if not loadModel(hash) then return end

            local pos = npc.coords   -- vec4
            local ped = CreatePed(4, hash, pos.x, pos.y, pos.z - 1.0, pos.w, false, true)

            FreezeEntityPosition(ped, true)
            SetEntityInvincible(ped, true)
            SetBlockingOfNonTemporaryEvents(ped, true)

            if npc.hasAnimation and npc.animDict and npc.animName then
                if loadAnimDict(npc.animDict) then
                    TaskPlayAnim(ped,
                        npc.animDict,
                        npc.animName,
                        8.0, -8.0,
                        -1, 1, 0, false, false, false)
                end
            end

            npcList[i] = { ped = ped, text = nil }
            updateNPCText(i)
            print("^2[NPC-SPAWNER] Spawné PNJ #" .. i .. " : " .. npc.model .. "^0")
        end)
        Wait(100)
    end
end)

Citizen.CreateThread(function()
    while true do
        local sleep = 1000
        local playerCoords = GetEntityCoords(PlayerPedId())
        for _, data in pairs(npcList) do
            if DoesEntityExist(data.ped) and data.text then
                local coords = GetEntityCoords(data.ped)
                if #(playerCoords - coords) < Config.DrawDistance then
                    sleep = 0
                    drawText3D(coords.x, coords.y, coords.z + 1.0, data.text)
                end
            end
        end
        Wait(sleep)
    end
end)
function drawText3D(x,y,z,text)
    local onScreen, _x, _y = World3dToScreen2d(x,y,z)
    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextCentre(true)
        SetTextDropshadow(1, 1, 1, 1, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        EndTextCommandDisplayText(_x, _y)
    end
end

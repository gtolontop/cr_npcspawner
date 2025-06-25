local npcList = {}

Citizen.CreateThread(function()
  for i, npc in ipairs(Config.NPCTable) do
    local hash = GetHashKey(npc.model)
    RequestModel(hash)
    while not HasModelLoaded(hash) do Wait(1) end

    local ped = CreatePed(4, hash,
      npc.coords.x, npc.coords.y, npc.coords.z - 1.0,
      npc.coords.h, false, true)

    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)

    if npc.hasAnimation and npc.animDict and npc.animName then
      RequestAnimDict(npc.animDict)
      while not HasAnimDictLoaded(npc.animDict) do Wait(1) end
      TaskPlayAnim(ped, npc.animDict, npc.animName, 8.0, -8.0, -1, 1, 0, false, false, false)
    end

    npcList[i] = { ped = ped, text = nil }

    Citizen.SetTimeout(math.random(5000,10000), function()
      updateNPCText(i)
    end)
  end
end)

function updateNPCText(index)
  local cfg = Config.NPCTable[index]
  local data = npcList[index]
  if cfg.texts and #cfg.texts > 0 then
    data.text = cfg.texts[math.random(#cfg.texts)]
  end

  Citizen.SetTimeout(math.random(5000,15000), function()
    updateNPCText(index)
  end)
end

Citizen.CreateThread(function()
  while true do
    local sleep = 1000
    local playerCoords = GetEntityCoords(PlayerPedId())

    for _, data in pairs(npcList) do
      if DoesEntityExist(data.ped) and data.text then
        local coords = GetEntityCoords(data.ped)
        local dist = #(playerCoords - coords)
        if dist < Config.DrawDistance then
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

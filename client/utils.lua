QBCore = exports['qb-core']:GetCoreObject()

local userBlip = nil
local blipCoords = nil

function ClearGPS ()
  DebugPrint("^4[Debug] ^2Called: ^3ClearGPS()^7")
  RemoveBlip(userBlip)
  userBlip = nil
end

function SetGPS (coords)
  DebugPrint("^4[Debug] ^2Called: ^3SetGPS()^7")
  userBlip = AddBlipForCoord(coords.x, coords.y, coords.z)
  SetBlipSprite(userBlip, 8)
  SetBlipColour(userBlip, 2)
  SetBlipRoute(userBlip, true)
  SetBlipRouteColour(userBlip, 2)
  blipCoords = vector3(coords.x, coords.y, coords.z)
end

CreateThread(function()
  while not QBCore do
    Wait(10)
  end
  while true do
      if userBlip then
        local pedCoords = QBCore.Functions.GetCoords(PlayerPedId())
        local distance = #(vector3(pedCoords.x, pedCoords.y, pedCoords.z) - blipCoords)
        if distance < 20 then
          ClearGPS ()
          QBCore.Functions.Notify('You have arrived', 'success', 5000)
        end
      end
      Wait(1000)
  end
end)

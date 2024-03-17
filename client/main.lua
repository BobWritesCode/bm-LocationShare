
RegisterNetEvent('bm-locationShare:client:setGPS', function(coords)
  DebugPrint("^4[Debug] ^2Called: ^3bm-locationShare:client:setGPS^7")
  DebugPrint("^4[Debug] ^2Coords: ^3" .. coords.x .. " ".. coords.y.. " "..  coords.z .. "^7")
  SetGPS(coords)
end)

RegisterNetEvent('bm-locationShare:client:clearGPS', function()
  DebugPrint("^4[Debug] ^2Called: ^3bm-locationShare:client:clearGPS^7")
  ClearGPS()
end)

print("^4[Log] ^3bm-shareLocation ^2started^7")

local QBCore = exports['qb-core']:GetCoreObject()

POIs = Config.Locations
Debug = Config.Debug

QBCore.Commands.Add(Config.Commands.navSet, "Create a shareable POI", {{ name="locationname", help="Give your POI a unique name."}}, true, function(source, args)
  local name = args[1]:lower()
  DebugPrint("^4[Debug] ^2Command called: ^3" .. Config.Commands.navSet.."^2 - with arg: ^3" .. name .. "^7")
  DebugPrint("^4[Debug] ^2Searching to see if already exists... ^7")
  for key, value in pairs(POIs) do
    DebugPrint("^4[Debug] ^2Searching to see if already exists...^3" .. value[1] .. "^7")
    if value[1]:lower() == name then
      DebugPrint("^4[Debug] ^2Matched: ^3" .. value[1] .. "^7")
      TriggerClientEvent('QBCore:Notify', source, "Please choose another name for your POI", 'error')
      return
    end
  end
    DebugPrint("^4[Debug] ^2No match. ^7")
    local Ped = GetPlayerPed(source)
    local coords = QBCore.Functions.GetCoords(Ped)
    local newEntry = {name, coords}
    table.insert(POIs, newEntry)
    DebugPrint("^4[Debug] ^2New entry added to table: ^3" .. name .. "^2 - ^3" .. coords .. "^7")
    local msg = "Nav point created, set with '/" .. Config.Commands.navTo .. " " .. name .."'"
    TriggerClientEvent('QBCore:Notify', source, msg, 'success')
end)

QBCore.Commands.Add(Config.Commands.navTo, "Set a location marker for shareable POI", {{ name="locationname", help="Provide POI name"}}, true, function(source, args)
  local name = args[1]:lower()
  DebugPrint("^4[Debug] ^2Command called: ^3" .. Config.Commands.navTo.."^2 - with arg: ^3" .. name .. "^7")
  DebugPrint("^4[Debug] ^2Searching to see if POI exists... ^7")
  for key, value in pairs(POIs) do
    DebugPrint("^4[Debug] ^2Searching to see if already exists...^3" .. value[1] .. "^7")
    if value[1]:lower() == name then
      DebugPrint("^4[Debug] ^2Matched: ^3" .. value[1] .. "^7")
      TriggerClientEvent('QBCore:Notify', source, "Location found", 'success')
      TriggerClientEvent('bm-locationShare:client:setGPS', source, value[2])
      return
    end
  end
    DebugPrint("^4[Debug] ^2No match. ^7")
    TriggerClientEvent('QBCore:Notify', source, "Not found", 'error')
end)

QBCore.Commands.Add(Config.Commands.navClear, "Clear POI marker and route", {}, true, function(source)
  DebugPrint("^4[Debug] ^2Command called: ^3" .. Config.Commands.navClear.."^7")
  TriggerClientEvent('bm-locationShare:client:clearGPS', source)
end)

print("^4[Log] ^3bm-locationShare ^2started^7")

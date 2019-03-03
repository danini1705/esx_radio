ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent("esx_walkie:startActionB")
AddEventHandler("esx_walkie:startActionB", function()
	local xPlayers = ESX.GetPlayers()

		for i=1, #xPlayers, 1 do

			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

			if xPlayer.job.name ~= nil and xPlayer.job.name == "police" then
				TriggerClientEvent("esx_walkie:startAnim", xPlayer.source) -- Client Event auf Animatonen start
				TriggerClientEvent("esx_walkie:startActionB", xPlayer.source) -- Client Event auf Aktionen start
				
			end
		end
end)

RegisterNetEvent("esx_walkie:stopActionB")
AddEventHandler("esx_walkie:stopActionB", function()
	local xPlayers = ESX.GetPlayers()

		for i=1, #xPlayers, 1 do

			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

			if xPlayer.job.name ~= nil and xPlayer.job.name == "police" then
				TriggerClientEvent("esx_walkie:stopAnim", xPlayer.source) -- Client Event auf Animatonen start
				TriggerClientEvent("esx_walkie:stopActionB", xPlayer.source) -- Client Event auf Aktionen start

			end
		end
end)

RegisterServerEvent('esx_walkie:playSoundWithinDistanceServer')
AddEventHandler('esx_walkie:playSoundWithinDistanceServer', function(maxDistance, soundFile, soundVolume)
	local xPlayers = ESX.GetPlayers()

		for i=1, #xPlayers, 1 do

			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

			if xPlayer.job.name ~= nil and xPlayer.job.name == "police" then
				TriggerClientEvent('esx_walkie:playSoundWithinDistanceClient', -1, xPlayer.source, maxDistance, soundFile, soundVolume)
			end
		end
end)

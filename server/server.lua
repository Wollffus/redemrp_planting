data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

-- ILLEGAL

RegisterServerEvent("RegisterUsableItem:cannabisseed")
AddEventHandler("RegisterUsableItem:cannabisseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_GINSENG_AB_SIM", "CRP_TOBACCOPLANT_BA_SIM", "CRP_TOBACCOPLANT_CA_SIM")
	local ItemData = data.getItem(_source, "cannabisseed")
	ItemData.RemoveItem(1)
end)


-- LEGAL
RegisterServerEvent("RegisterUsableItem:tobaccoseed")
AddEventHandler("RegisterUsableItem:tobaccoseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_TOBACCOPLANT_AA_SIM", "CRP_TOBACCOPLANT_AB_SIM", "CRP_TOBACCOPLANT_AC_SIM")
	local ItemData = data.getItem(_source, "tobaccoseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:sugarsaneseed")
AddEventHandler("RegisterUsableItem:sugarsaneseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_SUGARCANE_AA_SIM", "CRP_SUGARCANE_AB_SIM", "CRP_SUGARCANE_AC_SIM")
	local ItemData = data.getItem(_source, "sugarsaneseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:cornseed")
AddEventHandler("RegisterUsableItem:cornseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_CORNSTALKS_CB_SIM", "CRP_CORNSTALKS_CA_SIM", "CRP_CORNSTALKS_AB_SIM")
	local ItemData = data.getItem(_source, "cornseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:carrotseed")
AddEventHandler("RegisterUsableItem:carrotseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_CARROTS_SAP_BA_SIM", "CRP_CARROTS_AA_SIM", "CRP_CARROTS_BA_SIM")
	local ItemData = data.getItem(_source, "carrotseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:cottonseed")
AddEventHandler("RegisterUsableItem:cottonseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_COTTON_BC_SIM", "CRP_COTTON_BB_SIM", "CRP_COTTON_BA_SIM")
	local ItemData = data.getItem(_source, "cottonseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:marymusseed")
AddEventHandler("RegisterUsableItem:marymusseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_COTTON_BC_SIM", "CRP_COTTON_BB_SIM", "CRP_COTTON_BA_SIM2")
	local ItemData = data.getItem(_source, "marymusseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:sweetflagseed")
AddEventHandler("RegisterUsableItem:sweetflagseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_SUGARCANE_AA_SIM", "CRP_SUGARCANE_AB_SIM", "CRP_SUGARCANE_AC_SIM2")
	local ItemData = data.getItem(_source, "sweetflagseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:enhinaceaseed")
AddEventHandler("RegisterUsableItem:enhinaceaseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_TOBACCOPLANT_AA_SIM", "CRP_TOBACCOPLANT_AB_SIM", "CRP_TOBACCOPLANT_AC_SIM2")
	local ItemData = data.getItem(_source, "enhinaceaseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:wheatseed")
AddEventHandler("RegisterUsableItem:wheatseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_WHEAT_SAP_LONG_AA_SIM", "CRP_WHEAT_SAP_LONG_AB_SIM", "CRP_WHEAT_DRY_LONG_AA_SIM")
	local ItemData = data.getItem(_source, "wheatseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:broccoliseed")
AddEventHandler("RegisterUsableItem:broccoliseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_BROCCOLI_AA_SIM", "CRP_BROCCOLI_AA_SIM", "CRP_BROCCOLI_AA_SIM")
	local ItemData = data.getItem(_source, "broccoliseed")
	ItemData.RemoveItem(1)
end)

RegisterServerEvent("RegisterUsableItem:lettuceseed")
AddEventHandler("RegisterUsableItem:lettuceseed", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:planto1', _source, "CRP_LETTUCE_AA_SIM", "CRP_LETTUCE_AA_SIM", "CRP_LETTUCE_AA_SIM")
	local ItemData = data.getItem(_source, "lettuceseed")
	ItemData.RemoveItem(1)
end)


RegisterServerEvent("RegisterUsableItem:wateringcan")
AddEventHandler("RegisterUsableItem:wateringcan", function(source)
    local _source = source
    TriggerClientEvent('poke_planting:regar1', _source)
end)

RegisterServerEvent('poke_planting:giveitem')
AddEventHandler('poke_planting:giveitem', function(tipo)
    local _source = source
	local count = math.random(5,10)
	local count2 = math.random(5,10)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local job = user.getJob()
		if tipo == "CRP_TOBACCOPLANT_AC_SIM" then
			TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] tobacco', 3)
			local ItemData = data.getItem(_source, "tobacco")
			ItemData.AddItem(count)
            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_SUGARCANE_AC_SIM" then
			local ItemData = data.getItem(_source, "sugar")
			if job == "farmer" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..(amount)'] sugar', 3)
			else
				ItemData.AddItem(count)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] sugar', 3)
			end
            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_CORNSTALKS_AB_SIM" then
			local ItemData = data.getItem(_source, "corn")
			if job == "farmer" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..(amount)'] corn', 3)
			else
				ItemData.AddItem(count)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] corn', 3)
			end
            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_CARROTS_BA_SIM" then
			local ItemData = data.getItem(_source, "carrot")
			if job == "farmer" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..(amount)'] carrot', 3)
			else
				ItemData.AddItem(count)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] carrot', 3)
			end

            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_COTTON_BA_SIM" then
			local ItemData = data.getItem(_source, "cotton")
			if job == "doctor" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] cotton', 3)
			else
				ItemData.AddItem(count2)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] cotton', 3)
			end

            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_COTTON_BA_SIM2" then
			local ItemData = data.getItem(_source, "kolce")
			if job == "doctor" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] marymus', 3)
			else
				ItemData.AddItem(count2)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] marymus', 3)
			end

            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_SUGARCANE_AC_SIM2" then
			local ItemData = data.getItem(_source, "tatarak")
			if job == "farmer" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..(amount)'] sweet flag', 3)
			else
				ItemData.AddItem(count)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] sweet flag', 3)
			end	

	            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
			elseif tipo == "CRP_TOBACCOPLANT_AC_SIM2" then
				local ItemData = data.getItem(_source, "jezowka")
				if job == "farmer" then
					local amount = math.random(5,10)
					ItemData.AddItem(amount)
					TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..(amount)'] enhinacea', 3)
				else
					ItemData.AddItem(count)
					TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] enhinacea', 3)
				end	

            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_WHEAT_DRY_LONG_AA_SIM" then
			local ItemData = data.getItem(_source, "wheat")
			if job == "farmer" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..(amount)'] wheat', 3)
			else
				ItemData.AddItem(count)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] wheat', 3)
			end
            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_BROCCOLI_AA_SIM" then
			local ItemData = data.getItem(_source, "broccoli")
			if job == "farmer" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..(amount)'] broccoli', 3)
			else
				ItemData.AddItem(count)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] broccoli', 3)
			end
            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_LETTUCE_AA_SIM" then
			local ItemData = data.getItem(_source, "lettuce")
			if job == "farmer" then
				local amount = math.random(5,10)
				ItemData.AddItem(amount)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..(amount)'] lettuce', 3)
			else
				ItemData.AddItem(count)
				TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] lettuce', 3)
			end
            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		elseif tipo == "CRP_TOBACCOPLANT_CA_SIM" then
			local ItemData = data.getItem(_source, "swampherb")
			if count == 1 then
				count = 2
			end
			 local Sheriff = 0
			local players = GetPlayers()
				for i,k in pairs(players) do
				   Wait(1)
					TriggerEvent('redemrp:getPlayerFromId', tonumber(k), function(user)
				  
						if user ~= nil and user.getJob() == "sheriff" then
							Sheriff = Sheriff + 1
						end

					end)
				end  
				if Sheriff == 0 then
					count = math.random(1, 2)
				end
			ItemData.AddItem(count)
			TriggerClientEvent("redemrp_notification:start", _source, 'You have collected[X'..count..'] swamp herb', 3)
            local emberandrex = math.random(15,50)
            user.addXP(emberandrex)
		end
    end)
end)

RegisterServerEvent('bad_cannabisinfo:CallToSherif')
AddEventHandler('bad_cannabisinfo:CallToSherif', function(x, y, z, zone) 
 local players = GetPlayers()
        for i,k in pairs(players) do
            TriggerEvent('redemrp:getPlayerFromId', tonumber(k), function(user)
                if user.getJob() == "sheriff" then
                  TriggerClientEvent('bad_cannabisinfo:InfoSheriff', tonumber(k), x, y, z, zone)
                end

            end)
        end   
end)

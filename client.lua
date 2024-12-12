-- Speed Limiter --
if Config.speedlimiter then
	Citizen.CreateThread(function()
		while true do 
			local ped = PlayerPedId()
			local vehicle = GetVehiclePedIsIn(ped, false)
			local speed = GetEntitySpeed(vehicle)
		    local class = GetVehicleClass(vehicle)
			Citizen.Wait(20)
			if (ped) then
		        if class == 0 then
		            if math.floor(speed*2.2369) == Config.Compacts then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 1 then
		            if math.floor(speed*2.2369) == Config.Sedans then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 2 then
		            if math.floor(speed*2.2369) == Config.SUVs then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 3 then
		            if math.floor(speed*2.2369) == Config.Coupes then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 4 then
		            if math.floor(speed*2.2369) == Config.Muscle then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 5 then
		            if math.floor(speed*2.2369) == Config.SportsClassics then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 6 then
		            if math.floor(speed*2.2369) == Config.Sports then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 7 then
		            if math.floor(speed*2.2369) == Config.Super then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 8 then
		            if math.floor(speed*2.2369) == Config.Motorcycles then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 9 then
		            if math.floor(speed*2.2369) == Config.OffRoad then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 10 then
		            if math.floor(speed*2.2369) == Config.Industrial then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 11 then
		            if math.floor(speed*2.2369) == Config.Utility then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 12 then
		            if math.floor(speed*2.2369) == Config.Vans then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 13 then
		            if math.floor(speed*2.2369) == Config.Cycles then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 14 then
		            if math.floor(speed*2.2369) == Config.Boats then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 15 then
		            if math.floor(speed*2.2369) == Config.Helicopters then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 16 then
		            if math.floor(speed*2.2369) == Config.Planes then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 17 then
		            if math.floor(speed*2.2369) == Config.Service then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 18 then
		            if math.floor(speed*2.2369) == Config.Emergency then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 19 then
		            if math.floor(speed*2.2369) == Config.Military then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 20 then
		            if math.floor(speed*2.2369) == Config.Commercial then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 21 then
		            if math.floor(speed*2.2369) == Config.Trains then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
		        elseif class == 22 then
		            if math.floor(speed*2.2369) == Config.OpenWheels then
		                cruise = speed
		                SetEntityMaxSpeed(vehicle, cruise)
		            end
				end
			end
		end
	end)
end

-- Anti VDM --
if Config.antivdm then
	Citizen.CreateThread(function()
	    while true do
	        SetWeaponDamageModifier(-1553120962, 0.0)
	        Citizen.Wait(10)
	    end
	end)
end

-- Disable Vehicle Weapons --
if Config.disablevehicleweapons then
	Citizen.CreateThread(function()
	    while true do
		local wait = 500
	        local playerped = PlayerPedId()
	        if IsPedInAnyVehicle(playerped, false) then
				wait = 0
				local veh = GetVehiclePedIsUsing(playerped)
				if DoesVehicleHaveWeapons(veh) == 1 and vehicleweaponhash ~= 1422046295 then
					vehicleweapon, vehicleweaponhash = GetCurrentPedVehicleWeapon(playerped)
					if vehicleweapon == 1 then
						DisableVehicleWeapon(true, vehicleweaponhash, veh, playerped)
					end
				end
			end
	        Citizen.Wait(wait)
		end
	end)
end

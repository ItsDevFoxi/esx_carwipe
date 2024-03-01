RegisterNetEvent("wld:delallveh")
AddEventHandler("wld:delallveh", function ()

    exports['es_admin2']:PrintToChat("Foxi Development", "Er is een Carwipe over 60 seconde!")
    Citizen.Wait(30000)   
    exports['es_admin2']:PrintToChat("Foxi Development", "Er is een Carwipe over 30 seconde!")
    Citizen.Wait(25000)     
    exports['es_admin2']:PrintToChat("Foxi Development", "Er is een Carwipe over 5 seconde!")
    Citizen.Wait(1000)
    exports['es_admin2']:PrintToChat("Foxi Development", "Er is een Carwipe over 4 seconde!")
    Citizen.Wait(1000)
    exports['es_admin2']:PrintToChat("Foxi Development", "Er is een Carwipe over 3 seconde!")
    Citizen.Wait(1000)
    exports['es_admin2']:PrintToChat("Foxi Development", "Er is een Carwipe over 2 seconde!")
    Citizen.Wait(1000)
    exports['es_admin2']:PrintToChat("Foxi Development", "Er is een Carwipe over 1 seconde!")
    Citizen.Wait(1000)
    exports['es_admin2']:PrintToChat("Foxi Development", "Alle no-used voertuigen zijn verwijdert!")
    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
            SetEntityAsMissionEntity(vehicle, false, false) 
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then 
                DeleteVehicle(vehicle) 
            end
        end
    end
end)
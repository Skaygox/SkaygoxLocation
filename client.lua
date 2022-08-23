print('')
print('^4Script by : SKAYGOX#4008')
print('^6Discord : https://discord.gg/2xJSk9pwFC')
print('')

Citizen.CreateThread(function()
    while true do
        local interval = 1
        local pos = GetEntityCoords(PlayerPedId())
        local dest = vector3(-1029.80, -2728.53, 13.75)
        local distance = GetDistanceBetweenCoords(pos, dest, true)

        if distance > 20 then
            interval = 200
        else
            interval = 1
            -- Pour avoir un marker --
            -- DrawMarker(2, -1029.80, -2728.53, 13.75, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 255, 0, 170, 0, 1, 2, 0, nil, nil, 0)
            if distance < 1 then
                AddTextEntry("HELP", "Appuyez sur ~INPUT_CONTEXT~ ~s~pour louer un véhicule !")
                DisplayHelpTextThisFrame("HELP", false)
                if IsControlJustPressed(1, 51) then
                    local model = GetHashKey("panto")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local panto = CreateVehicle(model, -1019.70, -2730.71, 13.69, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), panto, -1)
                    TriggerServerEvent('skay:pay')
                    print("Profitez bien de votre journée !")
                end
            end
        end
        Citizen.Wait(interval)
    end
end)

-- Ped --

Citizen.CreateThread(function()
    local hash = GetHashKey("s_m_m_security_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "s_m_m_security_01", -1029.80, -2728.53, 12.75, 164.721694, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
end)
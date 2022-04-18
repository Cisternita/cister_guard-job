local entrar_en_servicio = vector3(-599.4725, -1123.952, 22.32092)
local en_zona_servicio = false
Citizen.CreateThread(function()
    while true do
        local t = 250
        jcoords=GetEntityCoords(PlayerPedId())
        if job == conserje and #(jcoords - entrar_en_servicio) <=5 then
            t = 0
            --Marcador para entrar en servicio--
            DrawMarker(1, -599.4725, -1123.952, 22.32092)
            if #(jcoords - entrar_en_servicio) <=1 then
                if IsControlPressed(0, 51) then
                    en_zona_servicio = true
                    ESX.ShowNotification(msg, flash, saveToBrief, hudColorIndex)
                end
            end
            
        end
        Wait(t)
    end
end)
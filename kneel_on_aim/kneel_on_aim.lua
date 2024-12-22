local handsUp = false -- Variable, um den Status der Hände zu verfolgen
local kneelI = false
local enterBlocked = false -- Variable, um die Sperrung der Enter-Taste zu verfolgen

-- Tastenbelegung: H drücken, um die Hände zu heben
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        -- Wenn der Spieler die "H"-Taste drückt (Code 74 für H)
        if IsControlJustPressed(0, 74) then
            handsUp = not handsUp  -- Wechselt den Status zwischen "Hände oben" und "Hände unten"
            
            local playerPed = PlayerPedId()

            if handsUp then
                -- Animation für Hände hoch (angepasst für "move_m@intimidation@cop@unarmed")
                RequestAnimDict("move_m@intimidation@cop@unarmed")
                while not HasAnimDictLoaded("move_m@intimidation@cop@unarmed") do
                    Citizen.Wait(0)
                end
                TaskPlayAnim(playerPed, "random@mugging3", "handsup_standing_base", 8.0, -8.0, -1, 50, 0, false, false, false)

                -- Nachricht, dass die Hände oben sind und der Spieler sich hinknien kann
                exports['okokTextUI']:Open('Drücke [ENTER], um auf die Knie zu gehen.', 'darkred', 'left', true)
            else
                -- Animation für Hände runter (stoppt alle laufenden Animationen)
                ClearPedTasksImmediately(playerPed)

                -- Nachricht, dass die Hände wieder unten sind
                exports['brutal_notify']:SendAlert('Händehoch', 'Du hast deine Hände wieder runtergenommen!', 10000, 'success')
                exports['okokTextUI']:Close()
            end
        end

        -- Wenn die Enter-Taste gedrückt wird und Enter noch nicht blockiert ist
        if handsUp and IsControlJustPressed(0, 176) and not enterBlocked then -- 176 ist der Keycode für "Enter"
            enterBlocked = true -- Sperrt die Enter-Taste nach dem ersten Drücken
            kneelI = not kneelI 
            local playerPed = PlayerPedId()
            ClearPedTasksImmediately(playerPed)  -- Stoppt alle laufenden Animationen
            exports['brutal_notify']:SendAlert('Händehoch', 'Du kniest dich jetzt hin!', 5000, 'warning ')
            exports['okokTextUI']:Close() 
            TriggerEvent("KneelHU", PlayerPedId()) -- Trigger das Event zum Hinknien
        end

        -- Entsperre die Enter-Taste, wenn X oder H gedrückt wird
        if handsUp and IsControlJustPressed(0, 73) or IsControlJustPressed(0, 74) and enterBlocked then -- 73 ist "X", 74 ist "H"
            local playerPed = PlayerPedId()
            ClearPedTasksImmediately(playerPed)  -- Stoppt alle laufenden Animationen
            handsUp = not handsUp
            exports['okokTextUI']:Close() 
            enterBlocked = false -- Setze die Blockierung zurück, damit Enter wieder funktioniert
            exports['brutal_notify']:SendAlert('Händehoch', 'Du hast das Hinknien, Abgebrochen', 5000, 'error')
            Citizen.Wait(5000)
        end
    end
end)

-- Funktion, die aufgerufen wird, wenn der Spieler Handschellen bekommt
RegisterNetEvent('jobs_creator:setHandcuffs')
AddEventHandler('jobs_creator:setHandcuffs', function(playerId, isHandcuffed)
    local playerPed = PlayerPedId()

    -- Wenn der Spieler Handschellen bekommt, stoppen wir die "Händehoch"-Animation und setzen alles zurück
    if isHandcuffed then
        handsUp = false  -- Setzt den Status der Hände zurück
        enterBlocked = false  -- Hebt die Sperrung der Enter-Taste auf
        kneeling = false  -- Setzt den Knielstatus zurück

        -- Stoppe alle laufenden Animationen
        ClearPedTasksImmediately(playerPed)

        -- Nachricht, dass der Spieler Handschellen hat und die Hände unten sind
        exports['brutal_notify']:SendAlert('Händehoch', 'Du hast jetzt Handschellen an, die Hände sind nun unten!', 5000, 'error')
        exports['okokTextUI']:Close()  -- Schließt das TextUI, falls offen
    end
end)

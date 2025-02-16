local ServerScriptService = game:GetService("ServerScriptService")
local Players = game:GetService("Players")

local Modules = ServerScriptService.Modules
local SoundService = require(Modules.SoundService)

repeat
    task.wait()
until SoundService:IsLoaded() == true -- Wait for the module to load

local Signal = SoundService:GetSignal()

-- Play a sound using the module [so that it can be detected!]
local Sound = Instance.new("Sound") -- Create a new sound
Sound.SoundId = "rbxassetid://5801257793"
Sound.Parent = workspace.SpawnLocation
Sound.Name = "Explosion (Example)"

SoundService:PlaySound(Sound, 2) -- Play the sound and destroy it after 2 seconds, use `SoundService:PlaySound(Sound)` if you don't want the sound to be destroyed!


-- Initiate player voice detection
Players.PlayerAdded:Connect(function(Player)
    SoundService:InitiateVoiceDetectFor(Player)
end)


-- Listen to sound detections
Signal:Connect(function(OriginatedFrom, Position)
    if OriginatedFrom and Position then
        if OriginatedFrom:IsA("Sound") then -- Sound made by a sound instance
            print(
                "Sound " .. OriginatedFrom.Name .. " (" .. OriginatedFrom.SoundId .. ") " .. "has been detected at",
                Position
            )
        else -- Sound made by a player (voice chat)
            print(OriginatedFrom.Name .. " has made a sound at", Position)
        end
    end
end)

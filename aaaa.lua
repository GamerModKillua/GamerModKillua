local noclip = true
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "t" then
noclip = not noclip
while true do
    player = game.Players.LocalPlayer
    character = player.Character

    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end

    game:GetService("RunService").Stepped:wait()
end

end
end)
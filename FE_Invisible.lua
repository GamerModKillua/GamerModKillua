-- Script made by janmandino#1039
local FullBodyInvisible = false -- Set this to true/false
local HoldTools = false -- Set this to true/false

local Character = game:GetService("Players").LocalPlayer.Character
local Tpback = Character.HumanoidRootPart.CFrame
Character.HumanoidRootPart.CFrame = CFrame.new(0, 100000000000, 0)
Character.LeftUpperArm:Destroy()
wait(0.5)
Character.RightUpperLeg:Destroy()
wait(0.5)
Character.LeftUpperLeg:Destroy()
wait(0.5)
if HoldTools == false then
	Character.RightUpperArm:Destroy()
end
Character.HumanoidRootPart.CFrame = Tpback
wait()
if FullBodyInvisible == true then
	Character.UpperTorso.Waist:Destroy()
end
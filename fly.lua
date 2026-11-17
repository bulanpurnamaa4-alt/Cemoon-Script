
-- CEMOON GUI
-- Roblox LocalScript

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "CemoonGUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 220, 0, 150)
frame.Position = UDim2.new(0.5, -110, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(35, 20, 60)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "✦ CEMOON MENU"
title.TextColor3 = Color3.fromRGB(210, 160, 255)
title.TextSize = 20
title.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.8, 0, 0, 45)
button.Position = UDim2.new(0.1, 0, 0.55, 0)
button.Text = "FLY: OFF"
button.TextSize = 18
button.TextColor3 = Color3.new(1, 1, 1)
button.BackgroundColor3 = Color3.fromRGB(110, 60, 180)
button.Parent = frame

local aktif = false

button.Activated:Connect(function()
    aktif = not aktif

    if aktif then
        button.Text = "FLY: ON"
    else
        button.Text = "FLY: OFF"
    end
end)

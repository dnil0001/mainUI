local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/dnil0001/mainUI/main/mainuilib.lua'))()
local Flags = Library.Flags

local Window = Library:Window({
    Text = "Syntax"
})

local Tab = Window:Tab({
    Text = "Aiming"
})

local Tab2 = Window:Tab({
    Text = "Visual"
})

local ChamsSection = Tab2:Section({
    Text = "Chams"
})

local Section = Tab:Section({
    Text = "Aimbot"
})

local Section2 = Tab:Section({
    Text = "FOV"
})

local Section3 = Tab:Section({
    Text = "Misc",
    Side = "Right"
})

ChamsSection:Toggle({
    Text = "Enabled",
    print("Works")
})

ChamsSection:Toggle({
    Text = "Color",
    print("Works")
})

ChamsSection:Toggle({
    Text = "Filled",
    print("Works")
})

ChamsSection:Toggle({
    Text = "Team Check"
})

Section:Toggle({
    Text = "Enabled"
})

Section:Toggle({
    Text = "Wall Check"
})

Section:Toggle({
    Text = "Smooth Aimbot"
})

Section2:Toggle({
    Text = "Enabled"
})

Section2:Toggle({
    Text = "Filled FOV"
})

Section2:Toggle({
    Text = "FOV Transparency",
    Tooltip = "Changes your fov transparency."
})

Section2:Button({
    Text = "Reset FOV",
    Tooltip = "This resets your aimbot fov."
})

Section3:Toggle({
    Text = "Infinite Ammo"
})

Section3:Toggle({
    Text = "No Spread"
})

Section3:Toggle({
    Text = "No Bullet Drop",
    Default = true
})

Section3:Toggle({
    Text = "Full Auto"
})

local a = Section3:Toggle({
    Text = "No Recoil"
})

local label = Section3:Label({
    Text = "This is a label.",
    Color = Color3.fromRGB(217, 97, 99),
    Tooltip = "This is a label."
})

local dropdown = Section:Dropdown({
    Text = "ESP",
    List = {"Red","Blue"},
    Flag = "Choosen",
    Callback = function()
        if list == "Red" then
            RedESP()
            print("works")
        else
            BlueESP()
            print("works")
        end
    end
})

Section:RadioButton({
    Text = "RadioButton",
    Options = {"Legit","Blatant"},
    Callback = function(v)
        warn(v)
    end
})

Section:Toggle({
    Text = "Silent Aimbot"
})

Section:Input({
    Placeholder = "Webhook URL",
    Flag = "URL"
})

Section:Keybind({
    Default = Enum.KeyCode.E,
    Text = "Aimbot Key",
    Callback = function()
        warn("Pressed")
    end
})

Section:Slider({
    Text = "Slider Test",
    Default = 5,
    Minimum = 0,
    Maximum = 50,
    Flag = "SliderFlag",
    Callback = function(v)
        warn(v)
    end
})

Tab:Select()

wait(5)

--[[dropdown:Refresh({
    List = {"Head", "Feet"}
})--]]

label:Set({
    Text = "This is a red label."
})

a:Set(true)

function RedESP()
while loop(5) do
local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"

for i, v in pairs(Players) do
    repeat wait() until v.Character
    if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = v.Character
        highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlightClone.Name = "Highlight"
    end
end

game.Players.PlayerAdded:Connect(function(player)
    repeat wait() until player.Character
    if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = player.Character
        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.Name = "Highlight"
    end
end)

game.Players.PlayerRemoving:Connect(function(playerRemoved)
    playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
end)

RunService.Heartbeat:Connect(function()
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
            task.wait()
        end
end
end)
end
end

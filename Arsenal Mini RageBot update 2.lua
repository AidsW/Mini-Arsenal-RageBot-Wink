if game.PlaceId == 286090429 then

local Config = {
    WindowName = "Necoware Arsenal Mini RageBot",
	Color = Color3.fromRGB(222,22,66),
	Keybind = Enum.KeyCode.RightBracket
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("RageBot")

local Section1 = Tab1:CreateSection("SpinBot Presets")

local Toggle1 = Section1:CreateToggle("Normal SpinBot", false, function(v)
    if v == true then
        local Bod = Instance.new("BodyGyro")
        Bod.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        Bod.P = 90000
        Bod.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
        Bod.Name = "RaidsW"
        local BodyGyro = game.Players.LocalPlayer.Character.HumanoidRootPart.RaidsW

        _G.Spin = true
        while _G.Spin and wait() do
            BodyGyro.CFrame = BodyGyro.CFrame * CFrame.Angles(0,math.rad(99),0)
        end
    end

    if v ~= true then
        _G.Spin = false

        for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetDescendants()) do
            if v:IsA("BodyGyro") then
                v:Destroy()
            end
        end
    end
end)

Toggle1:CreateKeybind("NONE", function()

end)

local Toggle1 = Section1:CreateToggle("Weird Ass SpinBot", false, function(v)
    if v == true then
        local Bod = Instance.new("BodyGyro")
        Bod.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        Bod.P = 15000
        Bod.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
        Bod.Name = "RaidsW"
        local BodyGyro = game.Players.LocalPlayer.Character.HumanoidRootPart.RaidsW

        _G.Spin = true
        while _G.Spin and wait(.5) do
            BodyGyro.CFrame = BodyGyro.CFrame * CFrame.Angles(0,math.rad(99),0)
        end
    end

    if v ~= true then
        _G.Spin = false

        for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetDescendants()) do
            if v:IsA("BodyGyro") then
                v:Destroy()
            end
        end
    end
end)

Toggle1:CreateKeybind("NONE", function()

end)

local Toggle1 = Section1:CreateToggle("Slow SpinBot", false, function(v)
    if v == true then
        local Bod = Instance.new("BodyGyro")
        Bod.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        Bod.P = 7000
        Bod.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
        Bod.Name = "RaidsW"
        local BodyGyro = game.Players.LocalPlayer.Character.HumanoidRootPart.RaidsW

        _G.Spin = true
        while _G.Spin and wait() do
            BodyGyro.CFrame = BodyGyro.CFrame * CFrame.Angles(0,math.rad(99),0)
        end
    end

    if v ~= true then
        _G.Spin = false

        for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetDescendants()) do
            if v:IsA("BodyGyro") then
                v:Destroy()
            end
        end
    end
end)

Toggle1:CreateKeybind("NONE", function()

end)

local Section1 = Tab1:CreateSection("Third Person")

local Toggle1 = Section1:CreateToggle("Third Person", false, function(v)
    if v == true then
        for i,v in pairs(game.Players.LocalPlayer.Character.PlayerGui.GUI.Client.Variables:GetDescendants()) do
            if v.Name == "thirdperson" then
                v.Value = true
            end
        end

    if v ~= true then
        if v.Name == "thirdperson" then
            v.Value = false
        end
    end
end)

Toggle1:CreateKeybind("Z", function()

end)


local Section1 = Tab1:CreateSection("AntiAim | Destroy Limbs")

local Button1 = Section1:CreateButton("Destroy Legs", function()
    game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
    game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
    game.Players.LocalPlayer.Character.RightFoot:Destroy()
    game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
    game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
    game.Players.LocalPlayer.Character.LeftFoot:Destroy()
end)

local Button1 = Section1:CreateButton("Destroy Arms", function()
    game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
    game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
    game.Players.LocalPlayer.Character.RightHand:Destroy()
    game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
    game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
    game.Players.LocalPlayer.Character.LeftHande:Destroy()
end)

local Button1 = Section1:CreateButton("Fake Head", function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v.Name == "FakeHead" then
            v:Destroy()
        end
    end
end)

end

if game.PlaceId ~= 286090429 then
    print("Nope! Wrong Game!")
end
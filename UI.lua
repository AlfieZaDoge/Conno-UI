local UI_Library = {}

function UI_Library:CreateWindow(title)
    local Core = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Bar = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local UICorner_2 = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local Close = Instance.new("ImageButton")
    local Minus = Instance.new("ImageButton")
    local SideBar = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")

    -- Properties:
    Core.Name = "Core"
    Core.Parent = game.CoreGui
    Core.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    Core.Position = UDim2.new(0.3, 0, 0.3, 0)
    Core.Size = UDim2.new(0.2, 0, 0.4, 0)
    Core.Active = true
    Core.Draggable = true

    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Core

    Bar.Name = "Bar"
    Bar.Parent = Core
    Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bar.Size = UDim2.new(1, 0, 0.07, 0)

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(182, 140, 158)), ColorSequenceKeypoint.new(1, Color3.fromRGB(63, 96, 161))}
    UIGradient.Parent = Bar

    UICorner_2.CornerRadius = UDim.new(0, 3)
    UICorner_2.Parent = Bar

    Title.Name = "Title"
    Title.Parent = Bar
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(0.5, 0, 1, 0)
    Title.Font = Enum.Font.ArialBold
    Title.Text = title or "Alfie Hub"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14

    Close.Name = "Close"
    Close.Parent = Bar
    Close.BackgroundTransparency = 1
    Close.Position = UDim2.new(0.92, 0, 0, 0)
    Close.Size = UDim2.new(0.07, 0, 1, 0)
    Close.Image = "rbxassetid://8445470984"

    Minus.Name = "Minus"
    Minus.Parent = Bar
    Minus.BackgroundTransparency = 1
    Minus.Position = UDim2.new(0.85, 0, 0, 0)
    Minus.Size = UDim2.new(0.07, 0, 1, 0)
    Minus.Image = "rbxassetid://6764432408"

    SideBar.Name = "SideBar"
    SideBar.Parent = Core
    SideBar.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    SideBar.Position = UDim2.new(0, 0, 0.07, 0)
    SideBar.Size = UDim2.new(0.2, 0, 0.93, 0)

    UICorner_3.CornerRadius = UDim.new(0, 2)
    UICorner_3.Parent = SideBar

    -- Close button functionality
    Close.MouseButton1Click:Connect(function()
        Core:Destroy()
    end)

    -- Minimize button functionality
    local minimized = false
    Minus.MouseButton1Click:Connect(function()
        if minimized then
            Core.Size = UDim2.new(0.2, 0, 0.4, 0)
        else
            Core.Size = UDim2.new(0.2, 0, 0.07, 0)
        end
        minimized = not minimized
    end)

    return Core
end

return UI_Library

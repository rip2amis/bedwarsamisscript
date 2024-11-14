loadstring([[
-- Creating the GUI components
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local Button3 = Instance.new("TextButton")
local FooterText = Instance.new("TextLabel")

-- Parent the GUI to the Player's screen
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Set up Frame to cover the whole screen
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 0

-- Main Text Label
TextLabel.Parent = Frame
TextLabel.Text = "Bro got ratted by amis"
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextSize = 32
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.2, 0)
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)

-- Button Function
local function onGiveUp()
    print("Give up clicked")
end

-- Button Template
local function createButton(button, position)
    button.Parent = Frame
    button.Size = UDim2.new(0.5, 0, 0.1, 0)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.Text = "Give Up"
    button.Font = Enum.Font.Gotham
    button.TextSize = 18
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.MouseButton1Click:Connect(onGiveUp)
end

-- Create buttons
createButton(Button1, UDim2.new(0.25, 0, 0.5, 0))
createButton(Button2, UDim2.new(0.25, 0, 0.65, 0))
createButton(Button3, UDim2.new(0.25, 0, 0.8, 0))

-- Footer Text
FooterText.Parent = Frame
FooterText.Text = "Gabriel Loqvist"
FooterText.Font = Enum.Font.GothamBold
FooterText.TextSize = 16
FooterText.TextColor3 = Color3.fromRGB(150, 150, 150)
FooterText.BackgroundTransparency = 1
FooterText.Position = UDim2.new(0.5, 0, 0.95, 0)
FooterText.AnchorPoint = Vector2.new(0.5, 0.5)
]])()

local UIS = game:GetService("UserInputService")

local RandomGui = Instance.new("ScreenGui")
RandomGui.Name = "RandomGui"
RandomGui.ResetOnSpawn = false
RandomGui.IgnoreGuiInset = true
RandomGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RandomGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
RandomGui.Parent = game:GetService("CoreGui")

local Frame = Instance.new("Frame")
Frame.AnchorPoint = Vector2.new(0.50, 0.50)
Frame.Size = UDim2.new(0.60, 0.00, 0.60, 0.00)
Frame.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
Frame.Position = UDim2.new(0.50, 0.00, 0.50, 0.00)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.new(0.19, 0.19, 0.19)
Frame.Parent = RandomGui

local ObjectList = Instance.new("Frame")
ObjectList.Name = "ObjectList"
ObjectList.Size = UDim2.new(0.00, 179.00, 0.00, 321.00)
ObjectList.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
ObjectList.Position = UDim2.new(0.03, 0.00, 0.05, 0.00)
ObjectList.BorderSizePixel = 0
ObjectList.BackgroundColor3 = Color3.new(0.42, 0.42, 0.42)
ObjectList.Parent = Frame

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Active = true
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.CanvasSize = UDim2.new(0.00, 0.00, 1.00, 0.00)
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollingFrame.BackgroundColor3 = Color3.new(0.42, 0.42, 0.42)
ScrollingFrame.Size = UDim2.new(1.00, 0.00, 1.00, 0.00)
ScrollingFrame.ScrollBarImageColor3 = Color3.new(0.00, 0.00, 0.00)
ScrollingFrame.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
ScrollingFrame.Parent = ObjectList

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = ScrollingFrame

local UIPadding = Instance.new("UIPadding")
UIPadding.Parent = ScrollingFrame

local Object = Instance.new("TextButton")
Object.Name = "Object"
Object.Visible = false
Object.BorderSizePixel = 2
Object.BackgroundColor3 = Color3.new(0.73, 0.52, 0.42)
Object.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Object.TextSize = 14
Object.Size = UDim2.new(0.90, 0.00, 0.06, 0.00)
Object.TextColor3 = Color3.new(0.00, 0.00, 0.00)
Object.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
Object.Text = "Name (type)"
Object.Position = UDim2.new(0.09, 0.00, 0.00, 0.00)
Object.Parent = ObjectList

local TextLabel = Instance.new("TextLabel")
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.TextSize = 14
TextLabel.Size = UDim2.new(0.27, 0.00, 0.04, 0.00)
TextLabel.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
TextLabel.Text = "OBJECTS LIST"
TextLabel.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.03, 0.00, 0.01, 0.00)
TextLabel.Parent = Frame

local ObjectProperties = Instance.new("Frame")
ObjectProperties.Name = "ObjectProperties"
ObjectProperties.Size = UDim2.new(0.00, 443.00, 0.00, 163.00)
ObjectProperties.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
ObjectProperties.Position = UDim2.new(0.32, 0.00, 0.05, 0.00)
ObjectProperties.BorderSizePixel = 0
ObjectProperties.BackgroundColor3 = Color3.new(0.42, 0.42, 0.42)
ObjectProperties.Parent = Frame

local Parent = Instance.new("TextLabel")
Parent.Name = "Parent"
Parent.TextWrapped = true
Parent.BorderSizePixel = 0
Parent.TextScaled = true
Parent.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
Parent.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Parent.TextSize = 14
Parent.Size = UDim2.new(0.5, 0, 0.50, 0)
Parent.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
Parent.Text = "Parent: "
Parent.TextColor3 = Color3.new(0.00, 0.00, 0.00)
Parent.BackgroundTransparency = 1
Parent.Parent = ObjectProperties

local UIListLayout_1 = Instance.new("UIListLayout")
UIListLayout_1.Wraps = true
UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_1.Parent = ObjectProperties

local Clear = Instance.new("TextButton")
Clear.Name = "Clear"
Clear.BorderSizePixel = 0
Clear.BackgroundColor3 = Color3.new(0.60, 0.17, 0.15)
Clear.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Clear.TextSize = 14
Clear.Size = UDim2.new(0.00, 122.00, 0.00, 39.00)
Clear.TextColor3 = Color3.new(0.00, 0.00, 0.00)
Clear.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
Clear.Text = "Clear List"
Clear.Position = UDim2.new(0.32, 0.00, 0.55, 0.00)
Clear.Parent = Frame

local ByName = Instance.new("TextBox")
ByName.Name = "ByName"
ByName.BorderSizePixel = 0
ByName.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
ByName.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ByName.TextSize = 14
ByName.ClearTextOnFocus = false
ByName.Size = UDim2.new(0.46, 0.00, 0.11, 0.00)
ByName.TextColor3 = Color3.new(0.00, 0.00, 0.00)
ByName.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
ByName.Text = ""
ByName.TextXAlignment = Enum.TextXAlignment.Left
ByName.Position = UDim2.new(0.32, 0.00, 0.68, 0.00)
ByName.Parent = Frame

local TextLabel_1 = Instance.new("TextLabel")
TextLabel_1.BorderSizePixel = 0
TextLabel_1.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_1.TextSize = 14
TextLabel_1.Size = UDim2.new(0.16, 0.00, 0.09, 0.00)
TextLabel_1.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
TextLabel_1.Text = "Search By Name"
TextLabel_1.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.Position = UDim2.new(0.80, 0.00, 0.69, 0.00)
TextLabel_1.Parent = Frame

local TextLabel_1 = Instance.new("TextLabel")
TextLabel_1.BorderSizePixel = 0
TextLabel_1.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_1.TextSize = 14
TextLabel_1.Size = UDim2.new(0.16, 0.00, 0.09, 0.00)
TextLabel_1.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
TextLabel_1.Text = "Search By Path"
TextLabel_1.TextColor3 = Color3.new(1.00, 1.00, 1.00)
TextLabel_1.BackgroundTransparency = 1
TextLabel_1.Position = UDim2.new(0.80, 0.00, 0.84, 0.00)
TextLabel_1.Parent = Frame

local ByPath = Instance.new("TextBox")
ByPath.Name = "ByPath"
ByPath.BorderSizePixel = 0
ByPath.BackgroundColor3 = Color3.new(1.00, 1.00, 1.00)
ByPath.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ByPath.TextSize = 14
ByPath.ClearTextOnFocus = false
ByPath.Size = UDim2.new(0.46, 0.00, 0.11, 0.00)
ByPath.TextColor3 = Color3.new(0.00, 0.00, 0.00)
ByPath.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
ByPath.Text = ""
ByPath.TextXAlignment = Enum.TextXAlignment.Left
ByPath.Position = UDim2.new(0.32, 0.00, 0.83, 0.00)
ByPath.Parent = Frame

local CurrentConn

local CurrentPath = game
local CurrentText = ""

local ClickConns = {}

local function ProceedNewConn()
	if CurrentConn then
		CurrentConn:Disconnect()
	end

	CurrentConn = CurrentPath.DescendantAdded:Connect(function(desc)
		print("added")

		local function CreateObject()
			print("created")
			local NewObject = Object:Clone()
			NewObject.Text = `{desc.Name} ({desc.ClassName})`
			NewObject.Parent = ScrollingFrame
			NewObject.Visible = true
			ClickConns[NewObject] = NewObject.MouseButton1Click:Connect(function()
				if desc:GetFullName() ~= desc.Name then
					Parent.Text = `Parent: {desc:GetFullName()}`
				else
					Parent.Text = "Parent: nil"
				end
			end)
		end

		print(CurrentText)

		if CurrentText == "" or CurrentText == " " then
			print("basic")
			CreateObject()
		elseif string.find(string.lower(desc.Name), string.lower(CurrentText)) then
			print("finded")
			CreateObject()
		end



	end)
end

local function onByPath(enterPressed, inputObject)
	if enterPressed then
		local TempText = ByPath.Text

		local data = string.split(TempText, ".")

		local TempPath = game

		for index, value in data do
			local test = TempPath:FindFirstChild(value)

			if test ~= nil and test ~= false then
				TempPath = test
			else
				ByPath.BackgroundColor3 = Color3.fromRGB(255, 28, 20)

				task.delay(1, function()
					ByPath.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				end)
				warn("Invalid Path")
				return
			end
		end

		ByPath.BackgroundColor3 = Color3.fromRGB(52, 255, 21)
		task.delay(1, function()
			ByPath.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end)

		CurrentPath = TempPath
		ProceedNewConn()

	end
end

ByPath.FocusLost:Connect(onByPath)

local function onByName(enterPressed, inputObject)
	if enterPressed then
		CurrentText = tostring(ByName.Text)

		ByName.BackgroundColor3 = Color3.fromRGB(52, 255, 21)

		task.delay(1, function()
			ByName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end)
	end
end

ByName.FocusLost:Connect(onByName)

Clear.MouseButton1Click:Connect(function()
	for index, value in ClickConns do
		value:Disconnect()
		ClickConns[index] = nil
	end

	for index, value in ScrollingFrame:GetChildren() do
		if value:IsA("TextButton") then
			value:Destroy()
		end
	end
end)

UIS.InputBegan:Connect(function(input, gameProcessedEvent)

	if input.KeyCode == Enum.KeyCode.Home or input.KeyCode == Enum.KeyCode.KeypadSeven then
		RandomGui.Enabled = not RandomGui.Enabled
	end
end)

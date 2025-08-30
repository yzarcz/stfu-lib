local Library = {}
Library.__index = Library

local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

function Library:Create(name, info, accentcolor)
	for _, gui in pairs(PlayerGui:GetChildren()) do
		if gui.Name == "baconlib" then
			gui:Destroy()
		end
	end
	wait(0.1)

	local Window = {}
	Window.__index = Window

	local UI, Navigation, Content, Scrolling

	do
		local baconlib = Instance.new("ScreenGui")
		baconlib.Name = "baconlib"
		baconlib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		baconlib.Parent = PlayerGui

		UI = Instance.new("Frame")
		UI.AnchorPoint = Vector2.new(0.5, 0.5)
		UI.Name = "UI"
		UI.Position = UDim2.new(0.5, 0, 0.5, 0)
		UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
		UI.Size = UDim2.new(0, 350, 0, 225)
		UI.BorderSizePixel = 0
		UI.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		UI.Parent = baconlib

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Thickness = 2
		UIStroke.Parent = UI

		local TopBar = Instance.new("Frame")
		TopBar.AnchorPoint = Vector2.new(0.5, 0)
		TopBar.Name = "TopBar"
		TopBar.Position = UDim2.new(0.5, 0, 0, 0)
		TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TopBar.Size = UDim2.new(1, 0, 0, 24)
		TopBar.BorderSizePixel = 0
		TopBar.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		TopBar.Parent = UI

		local UIStroke_TopBar = Instance.new("UIStroke")
		UIStroke_TopBar.Color = Color3.fromRGB(52, 52, 52)
		UIStroke_TopBar.Parent = TopBar

		local Accent_TopBar = Instance.new("Frame")
		Accent_TopBar.Name = "Accent_TopBar"
		Accent_TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Accent_TopBar.Size = UDim2.new(1, 0, 0, 2)
		Accent_TopBar.BorderSizePixel = 0
		Accent_TopBar.BackgroundColor3 = accentcolor
		Accent_TopBar.Parent = TopBar

		local Title_TopBar = Instance.new("TextLabel")
		Title_TopBar.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Title_TopBar.TextColor3 = Color3.fromRGB(99, 99, 99)
		Title_TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_TopBar.Text = name
		Title_TopBar.Name = "Title_TopBar"
		Title_TopBar.AnchorPoint = Vector2.new(0, 0.5)
		Title_TopBar.Size = UDim2.new(0.30000001192092896, 0, 0, 15)
		Title_TopBar.BackgroundTransparency = 1
		Title_TopBar.TextXAlignment = Enum.TextXAlignment.Left
		Title_TopBar.Position = UDim2.new(0, 5, 0.5, 0)
		Title_TopBar.BorderSizePixel = 0
		Title_TopBar.TextSize = 14
		Title_TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_TopBar.Parent = TopBar

		Navigation = Instance.new("Frame")
		Navigation.Name = "Navigation"
		Navigation.Position = UDim2.new(0, 0, 0, 25)
		Navigation.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Navigation.Size = UDim2.new(0, 100, 1, -50)
		Navigation.BorderSizePixel = 0
		Navigation.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		Navigation.Parent = UI

		local UIStroke_Nav = Instance.new("UIStroke")
		UIStroke_Nav.Color = Color3.fromRGB(52, 52, 52)
		UIStroke_Nav.Parent = Navigation

		Scrolling = Instance.new("ScrollingFrame")
		Scrolling.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		Scrolling.Active = true
		Scrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Scrolling.ScrollBarThickness = 0
		Scrolling.BackgroundTransparency = 1
		Scrolling.Name = "Scrolling"
		Scrolling.Size = UDim2.new(1, 0, 1, 0)
		Scrolling.BorderSizePixel = 0
		Scrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Scrolling.Parent = Navigation

		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Parent = Scrolling

		local BottomBar = Instance.new("Frame")
		BottomBar.AnchorPoint = Vector2.new(0, 1)
		BottomBar.Name = "BottomBar"
		BottomBar.Position = UDim2.new(0, 0, 1, 0)
		BottomBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		BottomBar.Size = UDim2.new(1, 0, 0, 25)
		BottomBar.BorderSizePixel = 0
		BottomBar.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		BottomBar.Parent = UI

		local UIStroke_Bottom = Instance.new("UIStroke")
		UIStroke_Bottom.Color = Color3.fromRGB(52, 52, 52)
		UIStroke_Bottom.Parent = BottomBar

		local Info_BottomBar = Instance.new("TextLabel")
		Info_BottomBar.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Info_BottomBar.TextColor3 = Color3.fromRGB(99, 99, 99)
		Info_BottomBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Info_BottomBar.Text = info
		Info_BottomBar.AnchorPoint = Vector2.new(0.5, 0.5)
		Info_BottomBar.Name = "Info_BottomBar"
		Info_BottomBar.BackgroundTransparency = 1
		Info_BottomBar.Position = UDim2.new(0.5, 0, 0.5, 0)
		Info_BottomBar.Size = UDim2.new(0.8999999761581421, 0, 0, 15)
		Info_BottomBar.BorderSizePixel = 0
		Info_BottomBar.TextSize = 14
		Info_BottomBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Info_BottomBar.Parent = BottomBar

		Content = Instance.new("Frame")
		Content.Name = "Content"
		Content.Position = UDim2.new(0, 108, 0, 33)
		Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Content.Size = UDim2.new(1, -112, 1, -66)
		Content.BorderSizePixel = 0
		Content.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		Content.Parent = UI

		local UIStroke_Content = Instance.new("UIStroke")
		UIStroke_Content.Color = Color3.fromRGB(52, 52, 52)
		UIStroke_Content.Parent = Content

		local dragging = false
		local dragStart = nil
		local startPos = nil

		local function HandleDragStart(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = UI.Position
			end
		end

		local function HandleDragEnd(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = false
			end
		end

		TopBar.InputBegan:Connect(HandleDragStart)
		TopBar.InputEnded:Connect(HandleDragEnd)

		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = input.Position - dragStart
				UI.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end
		end)
	end

	Window.tabs = {}
	Window.currentTab = nil

	function Window:CreateTab(tabName)
		local Tab = {
			name = tabName,
			frame = nil,
			button = nil
		}

		local Tab_Frame = Instance.new("Frame")
		Tab_Frame.BackgroundTransparency = 1
		Tab_Frame.Name = "Tab_" .. tabName
		Tab_Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab_Frame.Size = UDim2.new(1, 0, 1, 0)
		Tab_Frame.BorderSizePixel = 0
		Tab_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab_Frame.Visible = false
		Tab_Frame.Parent = Content

		local Title_Tab_Frame = Instance.new("TextLabel")
		Title_Tab_Frame.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		Title_Tab_Frame.TextColor3 = Color3.fromRGB(99, 99, 99)
		Title_Tab_Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_Tab_Frame.Text = tabName
		Title_Tab_Frame.Name = "Title_Tab_" .. tabName
		Title_Tab_Frame.Size = UDim2.new(0.5, 0, 0, 10)
		Title_Tab_Frame.BackgroundTransparency = 1
		Title_Tab_Frame.TextXAlignment = Enum.TextXAlignment.Left
		Title_Tab_Frame.Position = UDim2.new(0, 5, 0, -5)
		Title_Tab_Frame.BorderSizePixel = 0
		Title_Tab_Frame.TextSize = 14
		Title_Tab_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_Tab_Frame.Parent = Tab_Frame

		local Tab_Scrolling = Instance.new("ScrollingFrame")
		Tab_Scrolling.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		Tab_Scrolling.Active = true
		Tab_Scrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab_Scrolling.ScrollBarThickness = 0
		Tab_Scrolling.BackgroundTransparency = 1
		Tab_Scrolling.Name = "Scrolling"
		Tab_Scrolling.Size = UDim2.new(1, 0, 1, 0)
		Tab_Scrolling.BorderSizePixel = 0
		Tab_Scrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab_Scrolling.Parent = Tab_Frame

		local UIListLayout_Tab = Instance.new("UIListLayout")
		UIListLayout_Tab.Padding = UDim.new(0, 7)
		UIListLayout_Tab.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_Tab.Parent = Tab_Scrolling

		local UIPadding_Tab = Instance.new("UIPadding")
		UIPadding_Tab.PaddingTop = UDim.new(0, 10)
		UIPadding_Tab.PaddingBottom = UDim.new(0, 5)
		UIPadding_Tab.PaddingRight = UDim.new(0, 5)
		UIPadding_Tab.PaddingLeft = UDim.new(0, 5)
		UIPadding_Tab.Parent = Tab_Scrolling

		local Tab_Button = Instance.new("Frame")
		Tab_Button.Name = "Tab_" .. tabName
		Tab_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab_Button.Size = UDim2.new(1, 0, 0, 30)
		Tab_Button.BorderSizePixel = 0
		Tab_Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Tab_Button.Parent = Scrolling

		local UIStroke_Button = Instance.new("UIStroke")
		UIStroke_Button.Color = Color3.fromRGB(52, 52, 52)
		UIStroke_Button.Parent = Tab_Button

		local Accent_Tab = Instance.new("Frame")
		Accent_Tab.Name = "Accent_Tab"
		Accent_Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Accent_Tab.Size = UDim2.new(0, 2, 1, 0)
		Accent_Tab.BorderSizePixel = 0
		Accent_Tab.BackgroundColor3 = accentcolor
		Accent_Tab.Visible = false
		Accent_Tab.Parent = Tab_Button

		local Title_Tab_Button = Instance.new("TextLabel")
		Title_Tab_Button.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Title_Tab_Button.TextColor3 = Color3.fromRGB(99, 99, 99)
		Title_Tab_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_Tab_Button.Text = tabName
		Title_Tab_Button.Name = "Title_Tab"
		Title_Tab_Button.BackgroundTransparency = 1
		Title_Tab_Button.Position = UDim2.new(0, 5, 0, 0)
		Title_Tab_Button.Size = UDim2.new(1, -5, 1, 0)
		Title_Tab_Button.BorderSizePixel = 0
		Title_Tab_Button.TextSize = 14
		Title_Tab_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_Tab_Button.Parent = Tab_Button

		local ClickDetector = Instance.new("TextButton")
		ClickDetector.BackgroundTransparency = 1
		ClickDetector.Size = UDim2.new(1, 0, 1, 0)
		ClickDetector.Text = ""
		ClickDetector.Parent = Tab_Button

		Tab.frame = Tab_Frame
		Tab.button = Tab_Button
		Tab.accent = Accent_Tab
		Tab.scrolling = Tab_Scrolling

		table.insert(Window.tabs, Tab)

		ClickDetector.MouseButton1Click:Connect(function()
			local ripple = Instance.new("Frame")
			ripple.Name = "Ripple"
			ripple.Size = UDim2.new(0, 0, 0, 0)
			ripple.Position = UDim2.new(0.5, 0, 0.5, 0)
			ripple.AnchorPoint = Vector2.new(0.5, 0.5)
			ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ripple.BackgroundTransparency = 0.8
			ripple.BorderSizePixel = 0
			ripple.ZIndex = 10
			ripple.Parent = Tab_Button

			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(1, 0)
			UICorner.Parent = ripple

			ripple:TweenSize(
				UDim2.new(0, 60, 0, 60),
				"Out",
				"Quad",
				0.3,
				true
			)

			local fadeOut = game:GetService("TweenService"):Create(
				ripple,
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			)

			fadeOut:Play()
			fadeOut.Completed:Connect(function()
				ripple:Destroy()
			end)

			Window:SwitchTab(tabName)
		end)

		if #Window.tabs == 1 then
			Window:SwitchTab(tabName)
		end

		function Tab:CreateLabel(text)
			local Label = Instance.new("Frame")
			Label.Name = "Label"
			Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label.Size = UDim2.new(1, 0, 0, 25)
			Label.BorderSizePixel = 0
			Label.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			Label.Parent = Tab_Scrolling

			local UIStroke = Instance.new("UIStroke")
			UIStroke.Color = Color3.fromRGB(52, 52, 52)
			UIStroke.Parent = Label

			local Text_Label = Instance.new("TextLabel")
			Text_Label.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Text_Label.TextColor3 = Color3.fromRGB(99, 99, 99)
			Text_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Text_Label.Text = text
			Text_Label.Name = "Text_Label"
			Text_Label.Size = UDim2.new(1, -5, 1, 0)
			Text_Label.BackgroundTransparency = 1
			Text_Label.TextXAlignment = Enum.TextXAlignment.Left
			Text_Label.Position = UDim2.new(0, 5, 0, 0)
			Text_Label.BorderSizePixel = 0
			Text_Label.TextSize = 14
			Text_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text_Label.Parent = Label

			return Label
		end

		function Tab:CreateButton(title, info, callback)
			local Button = Instance.new("Frame")
			Button.Name = "Button"
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.Size = UDim2.new(1, 0, 0, 40)
			Button.BorderSizePixel = 0
			Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			Button.Parent = Tab_Scrolling

			local UIStroke = Instance.new("UIStroke")
			UIStroke.Color = Color3.fromRGB(52, 52, 52)
			UIStroke.Parent = Button

			local Title_Button = Instance.new("TextLabel")
			Title_Button.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Title_Button.TextColor3 = Color3.fromRGB(99, 99, 99)
			Title_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_Button.Text = title
			Title_Button.Name = "Title_Button"
			Title_Button.Size = UDim2.new(1, -10, 0, 18)
			Title_Button.BackgroundTransparency = 1
			Title_Button.TextXAlignment = Enum.TextXAlignment.Left
			Title_Button.Position = UDim2.new(0, 5, 0, 5)
			Title_Button.BorderSizePixel = 0
			Title_Button.TextSize = 14
			Title_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_Button.TextWrapped = true
			Title_Button.TextYAlignment = Enum.TextYAlignment.Top
			Title_Button.Parent = Button

			local Info_Button = Instance.new("TextLabel")
			Info_Button.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Info_Button.TextColor3 = Color3.fromRGB(77, 77, 77)
			Info_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Info_Button.Text = info
			Info_Button.Name = "Info_Button"
			Info_Button.Size = UDim2.new(1, -10, 0, 16)
			Info_Button.BackgroundTransparency = 1
			Info_Button.TextXAlignment = Enum.TextXAlignment.Left
			Info_Button.Position = UDim2.new(0, 5, 0, 25)
			Info_Button.BorderSizePixel = 0
			Info_Button.TextSize = 12
			Info_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Info_Button.TextWrapped = true
			Info_Button.TextYAlignment = Enum.TextYAlignment.Top
			Info_Button.Parent = Button

			local textService = game:GetService("TextService")

			local titleBounds = textService:GetTextSize(title, 14, Title_Button.Font, Vector2.new(Title_Button.AbsoluteSize.X, math.huge))
			local infoBounds = textService:GetTextSize(info, 12, Info_Button.Font, Vector2.new(Info_Button.AbsoluteSize.X, math.huge))

			local totalHeight = 5 + titleBounds.Y + 2 + infoBounds.Y + 5

			Button.Size = UDim2.new(1, 0, 0, totalHeight)

			Title_Button.Size = UDim2.new(1, -10, 0, titleBounds.Y)
			Info_Button.Size = UDim2.new(1, -10, 0, infoBounds.Y)
			Info_Button.Position = UDim2.new(0, 5, 0, 5 + titleBounds.Y + 2)

			local ClickDetector = Instance.new("TextButton")
			ClickDetector.BackgroundTransparency = 1
			ClickDetector.Size = UDim2.new(1, 0, 1, 0)
			ClickDetector.Text = ""
			ClickDetector.Parent = Button

			ClickDetector.MouseButton1Click:Connect(function()
				local ripple = Instance.new("Frame")
				ripple.Name = "Ripple"
				ripple.Size = UDim2.new(0, 0, 0, 0)
				ripple.Position = UDim2.new(0.5, 0, 0.5, 0)
				ripple.AnchorPoint = Vector2.new(0.5, 0.5)
				ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ripple.BackgroundTransparency = 0.8
				ripple.BorderSizePixel = 0
				ripple.ZIndex = 10
				ripple.Parent = Button

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(1, 0)
				UICorner.Parent = ripple

				ripple:TweenSize(
					UDim2.new(0, 60, 0, 60),
					"Out",
					"Quad",
					0.3,
					true
				)

				local fadeOut = game:GetService("TweenService"):Create(
					ripple,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				)

				fadeOut:Play()
				fadeOut.Completed:Connect(function()
					ripple:Destroy()
				end)

				if callback then
					callback()
				end
			end)

			return Button
		end

		function Tab:CreateToggle(title, info, default, callback)
			local Toggle = Instance.new("Frame")
			Toggle.Name = "Toggle"
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.Size = UDim2.new(1, 0, 0, 30)
			Toggle.BorderSizePixel = 0
			Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			Toggle.Parent = Tab_Scrolling

			local UIStroke_Toggle = Instance.new("UIStroke")
			UIStroke_Toggle.Color = Color3.fromRGB(52, 52, 52)
			UIStroke_Toggle.Parent = Toggle

			local Title_Toggle = Instance.new("TextLabel")
			Title_Toggle.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Title_Toggle.TextColor3 = Color3.fromRGB(99, 99, 99)
			Title_Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_Toggle.Text = title
			Title_Toggle.Name = "Title_Toggle"
			Title_Toggle.Size = UDim2.new(0.5, -5, 0, 20)
			Title_Toggle.BackgroundTransparency = 1
			Title_Toggle.TextXAlignment = Enum.TextXAlignment.Left
			Title_Toggle.Position = UDim2.new(0, 5, 0, 0)
			Title_Toggle.BorderSizePixel = 0
			Title_Toggle.TextSize = 14
			Title_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_Toggle.Parent = Toggle

			local Info_Toggle = Instance.new("TextLabel")
			Info_Toggle.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Info_Toggle.TextColor3 = Color3.fromRGB(77, 77, 77)
			Info_Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Info_Toggle.Text = info
			Info_Toggle.Name = "Info_Toggle"
			Info_Toggle.AnchorPoint = Vector2.new(0, 1)
			Info_Toggle.Size = UDim2.new(1, -35, 0, 10)
			Info_Toggle.BackgroundTransparency = 1
			Info_Toggle.TextXAlignment = Enum.TextXAlignment.Left
			Info_Toggle.Position = UDim2.new(0, 5, 1, -5)
			Info_Toggle.BorderSizePixel = 0
			Info_Toggle.TextSize = 12
			Info_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Info_Toggle.Parent = Toggle

			local CheckBoard = Instance.new("Frame")
			CheckBoard.AnchorPoint = Vector2.new(1, 0.5)
			CheckBoard.Name = "CheckBoard"
			CheckBoard.Position = UDim2.new(1, -5, 0.5, 0)
			CheckBoard.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CheckBoard.Size = UDim2.new(0, 20, 0, 20)
			CheckBoard.BorderSizePixel = 0
			CheckBoard.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			CheckBoard.Parent = Toggle

			local UIStroke_CheckBoard = Instance.new("UIStroke")
			UIStroke_CheckBoard.Color = Color3.fromRGB(52, 52, 52)
			UIStroke_CheckBoard.Parent = CheckBoard

			local Checked = Instance.new("Frame")
			Checked.AnchorPoint = Vector2.new(0.5, 0.5)
			Checked.Name = "Checked"
			Checked.Position = UDim2.new(0.5, 0, 0.5, 0)
			Checked.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Checked.Size = UDim2.new(0, 12, 0, 12)
			Checked.BorderSizePixel = 0
			Checked.BackgroundColor3 = accentcolor
			Checked.Visible = default or false
			Checked.Parent = CheckBoard

			local UIStroke_Checked = Instance.new("UIStroke")
			UIStroke_Checked.Color = Color3.fromRGB(52, 52, 52)
			UIStroke_Checked.Parent = Checked

			local Icon = Instance.new("ImageLabel")
			Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Icon.Image = "rbxassetid://123505575168158"
			Icon.BackgroundTransparency = 1
			Icon.Name = "Icon"
			Icon.Size = UDim2.new(0.8, 0, 0.8, 0)
			Icon.Position = UDim2.new(0.1, 0, 0.1, 0)
			Icon.BorderSizePixel = 0
			Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
			Icon.Parent = Checked

			local ClickDetector = Instance.new("TextButton")
			ClickDetector.BackgroundTransparency = 1
			ClickDetector.Size = UDim2.new(1, 0, 1, 0)
			ClickDetector.Text = ""
			ClickDetector.Parent = Toggle

			local isToggled = default or false

			local function UpdateToggle()
				if isToggled then
					Checked.Visible = true
					Checked.Size = UDim2.new(0, 8, 0, 8)
					Checked:TweenSize(
						UDim2.new(0, 12, 0, 12),
						"Out",
						"Back",
						0.2,
						true
					)
				else
					Checked:TweenSize(
						UDim2.new(0, 8, 0, 8),
						"Out",
						"Quad",
						0.15,
						true,
						function()
							Checked.Visible = false
							Checked.Size = UDim2.new(0, 12, 0, 12)
						end
					)
				end

				if callback then
					callback(isToggled)
				end
			end

			ClickDetector.MouseButton1Click:Connect(function()
				local ripple = Instance.new("Frame")
				ripple.Name = "Ripple"
				ripple.Size = UDim2.new(0, 0, 0, 0)
				ripple.Position = UDim2.new(0.5, 0, 0.5, 0)
				ripple.AnchorPoint = Vector2.new(0.5, 0.5)
				ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ripple.BackgroundTransparency = 0.8
				ripple.BorderSizePixel = 0
				ripple.ZIndex = 10
				ripple.Parent = Toggle

				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(1, 0)
				UICorner.Parent = ripple

				ripple:TweenSize(
					UDim2.new(0, 60, 0, 60),
					"Out",
					"Quad",
					0.3,
					true
				)

				local fadeOut = game:GetService("TweenService"):Create(
					ripple,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				)

				fadeOut:Play()
				fadeOut.Completed:Connect(function()
					ripple:Destroy()
				end)

				isToggled = not isToggled
				UpdateToggle()
			end)

			UpdateToggle()

			local ToggleObject = {
				Toggle = Toggle,
				SetValue = function(value)
					isToggled = value
					UpdateToggle()
				end,
				GetValue = function()
					return isToggled
				end
			}

			return ToggleObject
		end

		return Tab
	end

	function Window:CreateLabel(tab, text)
		local Label = Instance.new("Frame")
		Label.Name = "Label"
		Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Label.Size = UDim2.new(1, 0, 0, 25)
		Label.BorderSizePixel = 0
		Label.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Label.Parent = tab.scrolling

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Color = Color3.fromRGB(52, 52, 52)
		UIStroke.Parent = Label

		local Text_Label = Instance.new("TextLabel")
		Text_Label.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Text_Label.TextColor3 = Color3.fromRGB(99, 99, 99)
		Text_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Text_Label.Text = text
		Text_Label.Name = "Text_Label"
		Text_Label.Size = UDim2.new(1, -5, 1, 0)
		Text_Label.BackgroundTransparency = 1
		Text_Label.TextXAlignment = Enum.TextXAlignment.Left
		Text_Label.Position = UDim2.new(0, 5, 0, 0)
		Text_Label.BorderSizePixel = 0
		Text_Label.TextSize = 14
		Text_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text_Label.Parent = Label

		return Label
	end

	function Window:CreateButton(tab, title, info, callback)
		local Button = Instance.new("Frame")
		Button.Name = "Button"
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.Size = UDim2.new(1, 0, 0, 30)
		Button.BorderSizePixel = 0
		Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Button.Parent = tab.scrolling

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Color = Color3.fromRGB(52, 52, 52)
		UIStroke.Parent = Button

		local Title_Button = Instance.new("TextLabel")
		Title_Button.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Title_Button.TextColor3 = Color3.fromRGB(99, 99, 99)
		Title_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_Button.Text = title
		Title_Button.Name = "Title_Button"
		Title_Button.Size = UDim2.new(0.5, -5, 0, 20)
		Title_Button.BackgroundTransparency = 1
		Title_Button.TextXAlignment = Enum.TextXAlignment.Left
		Title_Button.Position = UDim2.new(0, 5, 0, 0)
		Title_Button.BorderSizePixel = 0
		Title_Button.TextSize = 14
		Title_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_Button.Parent = Button

		local Info_Button = Instance.new("TextLabel")
		Info_Button.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Info_Button.TextColor3 = Color3.fromRGB(77, 77, 77)
		Info_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Info_Button.Text = info
		Info_Button.Name = "Info_Button"
		Info_Button.AnchorPoint = Vector2.new(0, 1)
		Info_Button.Size = UDim2.new(1, -10, 0, 10)
		Info_Button.BackgroundTransparency = 1
		Info_Button.TextXAlignment = Enum.TextXAlignment.Right
		Info_Button.Position = UDim2.new(0, 5, 1, -5)
		Info_Button.BorderSizePixel = 0
		Info_Button.TextSize = 14
		Info_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Info_Button.Parent = Button

		local ClickDetector = Instance.new("TextButton")
		ClickDetector.BackgroundTransparency = 1
		ClickDetector.Size = UDim2.new(1, 0, 1, 0)
		ClickDetector.Text = ""
		ClickDetector.Parent = Button

		ClickDetector.MouseButton1Click:Connect(function()
			local ripple = Instance.new("Frame")
			ripple.Name = "Ripple"
			ripple.Size = UDim2.new(0, 0, 0, 0)
			ripple.Position = UDim2.new(0.5, 0, 0.5, 0)
			ripple.AnchorPoint = Vector2.new(0.5, 0.5)
			ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ripple.BackgroundTransparency = 0.8
			ripple.BorderSizePixel = 0
			ripple.ZIndex = 10
			ripple.Parent = Button

			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(1, 0)
			UICorner.Parent = ripple

			ripple:TweenSize(
				UDim2.new(0, 60, 0, 60),
				"Out",
				"Quad",
				0.3,
				true
			)

			local fadeOut = game:GetService("TweenService"):Create(
				ripple,
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			)

			fadeOut:Play()
			fadeOut.Completed:Connect(function()
				ripple:Destroy()
			end)

			if callback then
				callback()
			end
		end)

		return Button
	end

	function Window:CreateToggle(tab, title, info, default, callback)
		local Toggle = Instance.new("Frame")
		Toggle.Name = "Toggle"
		Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Toggle.Size = UDim2.new(1, 0, 0, 30)
		Toggle.BorderSizePixel = 0
		Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Toggle.Parent = tab.scrolling

		local UIStroke_Toggle = Instance.new("UIStroke")
		UIStroke_Toggle.Color = Color3.fromRGB(52, 52, 52)
		UIStroke_Toggle.Parent = Toggle

		local Title_Toggle = Instance.new("TextLabel")
		Title_Toggle.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Title_Toggle.TextColor3 = Color3.fromRGB(99, 99, 99)
		Title_Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_Toggle.Text = title
		Title_Toggle.Name = "Title_Toggle"
		Title_Toggle.Size = UDim2.new(0.5, -5, 0, 20)
		Title_Toggle.BackgroundTransparency = 1
		Title_Toggle.TextXAlignment = Enum.TextXAlignment.Left
		Title_Toggle.Position = UDim2.new(0, 5, 0, 0)
		Title_Toggle.BorderSizePixel = 0
		Title_Toggle.TextSize = 14
		Title_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_Toggle.Parent = Toggle

		local Info_Toggle = Instance.new("TextLabel")
		Info_Toggle.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Info_Toggle.TextColor3 = Color3.fromRGB(77, 77, 77)
		Info_Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Info_Toggle.Text = info
		Info_Toggle.Name = "Info_Toggle"
		Info_Toggle.AnchorPoint = Vector2.new(0, 1)
		Info_Toggle.Size = UDim2.new(1, -35, 0, 10)
		Info_Toggle.BackgroundTransparency = 1
		Info_Toggle.TextXAlignment = Enum.TextXAlignment.Left
		Info_Toggle.Position = UDim2.new(0, 5, 1, -5)
		Info_Toggle.BorderSizePixel = 0
		Info_Toggle.TextSize = 12
		Info_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Info_Toggle.Parent = Toggle

		local CheckBoard = Instance.new("Frame")
		CheckBoard.AnchorPoint = Vector2.new(1, 0.5)
		CheckBoard.Name = "CheckBoard"
		CheckBoard.Position = UDim2.new(1, -5, 0.5, 0)
		CheckBoard.BorderColor3 = Color3.fromRGB(0, 0, 0)
		CheckBoard.Size = UDim2.new(0, 20, 0, 20)
		CheckBoard.BorderSizePixel = 0
		CheckBoard.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		CheckBoard.Parent = Toggle

		local UIStroke_CheckBoard = Instance.new("UIStroke")
		UIStroke_CheckBoard.Color = Color3.fromRGB(52, 52, 52)
		UIStroke_CheckBoard.Parent = CheckBoard

		local Checked = Instance.new("Frame")
		Checked.AnchorPoint = Vector2.new(0.5, 0.5)
		Checked.Name = "Checked"
		Checked.Position = UDim2.new(0.5, 0, 0.5, 0)
		Checked.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Checked.Size = UDim2.new(0, 12, 0, 12)
		Checked.BorderSizePixel = 0
		Checked.BackgroundColor3 = accentcolor
		Checked.Visible = default or false
		Checked.Parent = CheckBoard

		local UIStroke_Checked = Instance.new("UIStroke")
		UIStroke_Checked.Color = Color3.fromRGB(52, 52, 52)
		UIStroke_Checked.Parent = Checked

		local Icon = Instance.new("ImageLabel")
		Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon.Image = "rbxassetid://123505575168158"
		Icon.BackgroundTransparency = 1
		Icon.Name = "Icon"
		Icon.Size = UDim2.new(0.8, 0, 0.8, 0)
		Icon.Position = UDim2.new(0.1, 0, 0.1, 0)
		Icon.BorderSizePixel = 0
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
		Icon.Parent = Checked

		local ClickDetector = Instance.new("TextButton")
		ClickDetector.BackgroundTransparency = 1
		ClickDetector.Size = UDim2.new(1, 0, 1, 0)
		ClickDetector.Text = ""
		ClickDetector.Parent = Toggle

		local isToggled = default or false

		local function UpdateToggle()
			if isToggled then
				Checked.Visible = true
				Checked.Size = UDim2.new(0, 8, 0, 8)
				Checked:TweenSize(
					UDim2.new(0, 12, 0, 12),
					"Out",
					"Back",
					0.2,
					true
				)
			else
				Checked:TweenSize(
					UDim2.new(0, 8, 0, 8),
					"Out",
					"Quad",
					0.15,
					true,
					function()
						Checked.Visible = false
						Checked.Size = UDim2.new(0, 12, 0, 12)
					end
				)
			end

			if callback then
				callback(isToggled)
			end
		end

		ClickDetector.MouseButton1Click:Connect(function()
			local ripple = Instance.new("Frame")
			ripple.Name = "Ripple"
			ripple.Size = UDim2.new(0, 0, 0, 0)
			ripple.Position = UDim2.new(0.5, 0, 0.5, 0)
			ripple.AnchorPoint = Vector2.new(0.5, 0.5)
			ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ripple.BackgroundTransparency = 0.8
			ripple.BorderSizePixel = 0
			ripple.ZIndex = 10
			ripple.Parent = Toggle

			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(1, 0)
			UICorner.Parent = ripple

			ripple:TweenSize(
				UDim2.new(0, 60, 0, 60),
				"Out",
				"Quad",
				0.3,
				true
			)

			local fadeOut = game:GetService("TweenService"):Create(
				ripple,
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1}
			)

			fadeOut:Play()
			fadeOut.Completed:Connect(function()
				ripple:Destroy()
			end)

			isToggled = not isToggled
			UpdateToggle()
		end)

		UpdateToggle()

		local ToggleObject = {
			Toggle = Toggle,
			SetValue = function(value)
				isToggled = value
				UpdateToggle()
			end,
			GetValue = function()
				return isToggled
			end
		}

		return ToggleObject
	end

	function Window:SwitchTab(tabName)
		for _, tab in ipairs(Window.tabs) do
			tab.frame.Visible = false
			tab.button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			tab.accent.Visible = false
		end

		for _, tab in ipairs(Window.tabs) do
			if tab.name == tabName then
				tab.frame.Visible = true
				tab.button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				tab.accent.Visible = true
				Window.currentTab = tab
				break
			end
		end
	end

	return setmetatable(Window, Window)
end

return Library

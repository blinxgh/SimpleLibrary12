local library = {}

function library:CreateWindow(name)
	local Library = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local MainCorner = Instance.new("UICorner")
	local MainPadding = Instance.new("UIPadding")
	local TopBar = Instance.new("Frame")
	local TopBarCloseButton = Instance.new("ImageButton")
	local TopBarName = Instance.new("TextLabel")
	local MainListLayout = Instance.new("UIListLayout")
	local Container = Instance.new("Frame")
	local ContainerListLayout = Instance.new("UIListLayout")
	local ContainerPadding = Instance.new("UIPadding")
	
	Library.Name = "Library"
	Library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	local function CKRKX_fake_script() -- Main.MainDragScript 
		local script = Instance.new('LocalScript', Main)

		local frame = script.Parent
		frame.Draggable = true
		frame.Active = true
	end
	coroutine.wrap(CKRKX_fake_script)()

	Main.Name = "Main"
	Main.Parent = Library
	Main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.0636846125, 0, 0.0816326588, 0)
	Main.Size = UDim2.new(0, 150, 0, 169)
	local function NHQDLHO_fake_script() -- Main.MainToggleScript 
		local script = Instance.new('LocalScript', Main)

		local UIS = game:GetService("UserInputService")
		local frame = script.Parent
		local toggled = false

		UIS.InputBegan:Connect(function(input)
			if input.KeyCode == Enum.KeyCode.RightShift then
				if toggled then
					frame.Visible = true
				else
					frame.Visible = false
				end	
				toggled = not toggled
			end
		end)
	end
	coroutine.wrap(NHQDLHO_fake_script)()

	MainCorner.CornerRadius = UDim.new(0, 6)
	MainCorner.Name = "MainCorner"
	MainCorner.Parent = Main

	MainPadding.Name = "MainPadding"
	MainPadding.Parent = Main

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopBar.BackgroundTransparency = 1.000
	TopBar.Position = UDim2.new(0, 0, -0.0628930852, 0)
	TopBar.Size = UDim2.new(0, 150, 0, 42)

	TopBarCloseButton.Name = "TopBarCloseButton"
	TopBarCloseButton.Parent = TopBar
	TopBarCloseButton.BackgroundTransparency = 1.000
	TopBarCloseButton.Position = UDim2.new(0.793333292, 0, 0.256845236, 0)
	TopBarCloseButton.Size = UDim2.new(0, 20, 0, 20)
	TopBarCloseButton.ZIndex = 2
	TopBarCloseButton.Image = "rbxassetid://3926305904"
	TopBarCloseButton.ImageColor3 = Color3.fromRGB(186, 186, 186)
	TopBarCloseButton.ImageRectOffset = Vector2.new(924, 724)
	TopBarCloseButton.ImageRectSize = Vector2.new(36, 36)
	local function ZSFQJZS_fake_script() -- TopBarCloseButton.CloseButtonScript 
		local script = Instance.new('LocalScript', TopBarCloseButton)

		local toggled = false
		local uis = game:GetService("UserInputService")
		local frame = script.Parent.Parent.Parent

		script.Parent.MouseButton1Down:Connect(function()
			frame:Destroy()
		end)
	end
	coroutine.wrap(ZSFQJZS_fake_script)()

	TopBarName.Name = "TopBarName"
	TopBarName.Parent = TopBar
	TopBarName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopBarName.BackgroundTransparency = 1.000
	TopBarName.Position = UDim2.new(0.11333333, 0, 0.256845236, 0)
	TopBarName.Size = UDim2.new(0, 115, 0, 20)
	TopBarName.Font = Enum.Font.Nunito
	TopBarName.TextColor3 = Color3.fromRGB(149, 149, 149)
	TopBarName.TextScaled = true
	TopBarName.Text = name
	TopBarName.TextSize = 14.000
	TopBarName.TextWrapped = true
	TopBarName.TextXAlignment = Enum.TextXAlignment.Left
	
	Container.Name = "Container"
	Container.Parent = game.StarterGui.Library.Main
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.Position = UDim2.new(0, 0, 0.308823526, 0)
	Container.Size = UDim2.new(0, 150, 0, 86)

	ContainerPadding.Name = "ContainerPadding"
	ContainerPadding.Parent = Container
	ContainerPadding.PaddingBottom = UDim.new(0, 10)
	ContainerPadding.PaddingTop = UDim.new(0, 5)

	MainListLayout.Name = "MainListLayout"
	MainListLayout.Parent = Main
	MainListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	Container.Name = "Container"
	Container.Parent = Main
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.Position = UDim2.new(0, 0, 0.248520717, 0)
	Container.Size = UDim2.new(0, 150, 0, 127)
	
	local skLib = {}
	
	function skLib:CreateButton(text, callback)
		local callback = callback or function() end
		
		local Button = Instance.new("Frame")
		local ButtonCorner = Instance.new("UICorner")
		local ButtonBtn = Instance.new("TextButton")
		local ButtonText = Instance.new("TextLabel")
		local ButtonStroke = Instance.new("UIStroke")
		
		ButtonStroke.Name = "ButtonStroke"
        ButtonStroke.Parent = Button
        
        ButtonStroke.Color = Color3.fromRGB(54, 54, 54)
        ButtonStroke.Thickness = 1
		
		Button.Name = "Button"
		Button.Parent = Container
		Button.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Button.Position = UDim2.new(0.0399999991, 0, 0, 0)
		Button.Size = UDim2.new(0, 132, 0, 34)

		ButtonCorner.Name = "ButtonCorner"
		ButtonCorner.Parent = Button

		ButtonBtn.Name = "ButtonBtn"
		ButtonBtn.Parent = Button
		ButtonBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonBtn.BackgroundTransparency = 1.000
		ButtonBtn.Size = UDim2.new(1, 0, 1, 0)
		ButtonBtn.Font = Enum.Font.SourceSans
		ButtonBtn.Text = ""
		ButtonBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
		ButtonBtn.TextSize = 14.000
		local function HEXB_fake_script() -- ButtonBtn.ButtonBtnScript 
			local script = Instance.new('LocalScript', ButtonBtn)

			script.Parent.MouseButton1Down:Connect(function()
				wait(.1)

				print("pressed")


				--
				game:GetService("TweenService"):Create(script.Parent.Parent.ButtonText, TweenInfo.new(.25, Enum.EasingStyle.Quad), {TextColor3 = Color3.fromRGB(0, 170, 127)}):Play()
				wait(.25)
				game:GetService("TweenService"):Create(script.Parent.Parent.ButtonText, TweenInfo.new(.25, Enum.EasingStyle.Quad), {TextColor3 = Color3.fromRGB(149, 149, 149)}):Play()
			end)
		end
		coroutine.wrap(HEXB_fake_script)()

		ButtonText.Name = "ButtonText"
		ButtonText.Parent = Button
		ButtonText.AnchorPoint = Vector2.new(0.5, 0.5)
		ButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonText.BackgroundTransparency = 1.000
		ButtonText.Position = UDim2.new(0.50999999, 0, 0.5, 0)
		ButtonText.Size = UDim2.new(0, 118, 0, 19)
		ButtonText.Font = Enum.Font.Nunito
		ButtonText.Text = text
		ButtonText.TextColor3 = Color3.fromRGB(149, 149, 149)
		ButtonText.TextScaled = true
		ButtonText.TextSize = 20.000
		ButtonText.TextWrapped = true
		ButtonText.TextXAlignment = Enum.TextXAlignment.Left
	end
	
	function skLib:CreateToggle(text, callback)
	    local actions = {}
	    
	    local callback = callback or function() end
	    
		local Toggle = Instance.new("Frame")
		local ToggleCorner = Instance.new("UICorner")
		local ToggleStroke = Instance.new("UIStroke")
		local ToggleBtn = Instance.new("TextButton")
		local ToggleText = Instance.new("TextLabel")
        local ToggleState = Instance.new("TextLabel")
		
		Toggle.Name = "Toggle"
		Toggle.Parent = Container
		Toggle.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Toggle.Position = UDim2.new(0.0399999991, 0, 0, 0)
		Toggle.Size = UDim2.new(0, 132, 0, 34)

		ToggleCorner.Name = "ToggleCorner"
		ToggleCorner.Parent = Toggle
		
		ToggleStroke.Name = "ToggleStroke"
        ToggleStroke.Parent = Toggle
        
        ToggleStroke.Color = Color3.fromRGB(54, 54, 54)
        ToggleStroke.Thickness = 1

		ToggleBtn.Name = "ToggleBtn"
		ToggleBtn.Parent = Toggle
		ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ToggleBtn.BackgroundTransparency = 1.000
		ToggleBtn.Size = UDim2.new(1, 0, 1, 0)
		ToggleBtn.Font = Enum.Font.SourceSans
		ToggleBtn.Text = ""
		ToggleBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
		ToggleBtn.TextSize = 14.000
		
		ToggleState.Name = "ToggleState"
        ToggleState.Parent = Toggle
        ToggleState.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleState.BackgroundTransparency = 1.000
        ToggleState.Position = UDim2.new(0.73484838, 0, 0, 0)
        ToggleState.Size = UDim2.new(0, 26, 0, 34)
        ToggleState.Font = Enum.Font.Nunito
        ToggleState.Text = ""
        ToggleState.TextColor3 = Color3.fromRGB(149, 149, 149)
        ToggleState.TextSize = 23.000

		ToggleText.Name = "ToggleText"
		ToggleText.Parent = Toggle
		ToggleText.AnchorPoint = Vector2.new(0.5, 0.5)
		ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ToggleText.BackgroundTransparency = 1.000
		ToggleText.Position = UDim2.new(0.50999999, 0, 0.5, 0)
		ToggleText.Size = UDim2.new(0, 118, 0, 19)
		ToggleText.Font = Enum.Font.Nunito
		ToggleText.Text = text or "Toggle"
		ToggleText.TextColor3 = Color3.fromRGB(149, 149, 149)
		ToggleText.TextScaled = true
		ToggleText.TextSize = 20.000
		ToggleText.TextWrapped = true
		ToggleText.TextXAlignment = Enum.TextXAlignment.Left
		
		local function Fire()
		    enabled = not enabled
		    ToggleState.Text = enabled and utf8.char(10003) or ""
		    pcall(callback, enabled)
		end
		
		ToggleBtn.MouseButton1Click:Connect(Fire)
		
		function actions:Set(arg)
		    ToggleState.Text = enabled and utf8.char(10003) or ""
		    pcall(callback, arg)
		end
	end
	
	return skLib
	
end

return library

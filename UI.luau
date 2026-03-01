local GetService = setmetatable({}, {
	__index = function(s, n)
		s[n] = (cloneref and clonefunction(cloneref) or function(x) return x end)(clonefunction(game.GetService)(game, n))
		return s[n]
	end
})
local IsMobile = GetService.UserInputService.TouchEnabled and not GetService.UserInputService.KeyboardEnabled
local LMG2L = {}
local Windows = {}
local Connections = {}
--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
designed using localmaze gui creator
]=]
do
	local arries = {}
	for i = 1, math.random(32,126) do
		arries[i] = string.char(math.random(32,126))
	end
	LMG2L["ScreenGui_1"] = Instance.new("ScreenGui")
	LMG2L["ScreenGui_1"].Name = table.concat(arries)
	LMG2L["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	LMG2L["ScreenGui_1"].ResetOnSpawn = false
	LMG2L["ScreenGui_1"].DisplayOrder = 2147483647
	if gethui then
		LMG2L["ScreenGui_1"].Parent = gethui()
	elseif GetService.CoreGui:FindFirstChild("RobloxGui") then
		LMG2L["ScreenGui_1"].Parent = GetService.CoreGui.RobloxGui
	else
		LMG2L["ScreenGui_1"].Parent = GetService.CoreGui
	end
end
local Theme = {}
Theme.Main = Color3.fromRGB(40,40,40)
Theme.Secondary = Color3.fromRGB(50,50,50)
Theme.Third = Color3.fromRGB(61,61,61)
Theme.Outline = Color3.fromRGB(63,205,212)
Theme.MainText = Color3.fromRGB(255,255,255)
Theme.SubText = Color3.fromRGB(231,231,231)
Theme.ButtonText = Color3.fromRGB(0,0,0)
Theme.Font = Enum.Font.Cartoon
LMG2L["WindowTemplate_1"] = Instance.new("Frame")
LMG2L["WindowTemplate_1"].BorderSizePixel = 0
LMG2L["WindowTemplate_1"].BackgroundColor3 = Theme.Third
LMG2L["WindowTemplate_1"].Size = UDim2.fromOffset(180,25)
LMG2L["WindowStroke_2"] = Instance.new("UIStroke",LMG2L["WindowTemplate_1"])
LMG2L["WindowStroke_2"].Thickness = 2
LMG2L["WindowStroke_2"].Color = Theme.Outline
LMG2L["WindowCorner_3"] = Instance.new("UICorner",LMG2L["WindowTemplate_1"])
LMG2L["WindowCorner_3"].CornerRadius = UDim.new(0,4)
LMG2L["WindowTitle_4"] = Instance.new("TextLabel",LMG2L["WindowTemplate_1"])
LMG2L["WindowTitle_4"].BackgroundTransparency = 1
LMG2L["WindowTitle_4"].BorderSizePixel = 0
LMG2L["WindowTitle_4"].Size = UDim2.fromOffset(155,25)
LMG2L["WindowTitle_4"].Font = Theme.Font
LMG2L["WindowTitle_4"].Text = ""
LMG2L["WindowTitle_4"].TextColor3 = Theme.Outline
LMG2L["WindowTitle_4"].TextSize = 20
LMG2L["WindowTitle_4"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["WindowClose_5"] = Instance.new("TextButton",LMG2L["WindowTemplate_1"])
LMG2L["WindowClose_5"].BackgroundTransparency = 1
LMG2L["WindowClose_5"].BorderSizePixel = 0
LMG2L["WindowClose_5"].Position = UDim2.fromOffset(155,0)
LMG2L["WindowClose_5"].Size = UDim2.fromOffset(25,25)
LMG2L["WindowClose_5"].Font = Theme.Font
LMG2L["WindowClose_5"].Text = "-"
LMG2L["WindowClose_5"].TextColor3 = Theme.MainText
LMG2L["WindowClose_5"].TextSize = 30
LMG2L["WindowContainer_6"] = Instance.new("Frame",LMG2L["WindowTemplate_1"])
LMG2L["WindowContainer_6"].BackgroundTransparency = 1
LMG2L["WindowContainer_6"].BorderSizePixel = 0
LMG2L["WindowContainer_6"].Position = UDim2.fromOffset(0,26)
LMG2L["WindowContainer_6"].Size = UDim2.fromOffset(180,0)
LMG2L["WindowContainerList_7"] = Instance.new("UIListLayout",LMG2L["WindowContainer_6"])
LMG2L["WindowContainerList_7"].SortOrder = Enum.SortOrder.LayoutOrder
LMG2L["SectionLabel_8"] = Instance.new("TextLabel")
LMG2L["SectionLabel_8"].BorderSizePixel = 0
LMG2L["SectionLabel_8"].BackgroundColor3 = Theme.Secondary
LMG2L["SectionLabel_8"].Size = UDim2.fromOffset(180,25)
LMG2L["SectionLabel_8"].Font = Theme.Font
LMG2L["SectionLabel_8"].Text = ""
LMG2L["SectionLabel_8"].TextColor3 = Theme.MainText
LMG2L["SectionLabel_8"].TextSize = 18
LMG2L["SectionLabel_8"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["SectionExpand_9"] = Instance.new("TextButton",LMG2L["SectionLabel_8"])
LMG2L["SectionExpand_9"].BackgroundTransparency = 1
LMG2L["SectionExpand_9"].BorderSizePixel = 0
LMG2L["SectionExpand_9"].Position = UDim2.fromOffset(155,0)
LMG2L["SectionExpand_9"].Rotation = 90
LMG2L["SectionExpand_9"].Size = UDim2.fromOffset(25,25)
LMG2L["SectionExpand_9"].Font = Theme.Font
LMG2L["SectionExpand_9"].Text = "<"
LMG2L["SectionExpand_9"].TextColor3 = Theme.MainText
LMG2L["SectionExpand_9"].TextSize = 20
LMG2L["SectionContainer_a"] = Instance.new("Frame")
LMG2L["SectionContainer_a"].BorderSizePixel = 0
LMG2L["SectionContainer_a"].BackgroundColor3 = Theme.Secondary
LMG2L["SectionContainer_a"].Size = UDim2.fromOffset(180,0)
LMG2L["SectionContainer_a"].Visible = false
LMG2L["SectionContainerList_b"] = Instance.new("UIListLayout",LMG2L["SectionContainer_a"])
LMG2L["SectionContainerList_b"].SortOrder = Enum.SortOrder.LayoutOrder
LMG2L["ToggleFrame_c"] = Instance.new("Frame")
LMG2L["ToggleFrame_c"].BackgroundTransparency = 1
LMG2L["ToggleFrame_c"].BorderSizePixel = 0
LMG2L["ToggleFrame_c"].Size = UDim2.fromOffset(180,26)
LMG2L["ToggleLabel_d"] = Instance.new("TextLabel",LMG2L["ToggleFrame_c"])
LMG2L["ToggleLabel_d"].BackgroundTransparency = 1
LMG2L["ToggleLabel_d"].BorderSizePixel = 0
LMG2L["ToggleLabel_d"].Size = UDim2.fromOffset(140,26)
LMG2L["ToggleLabel_d"].Font = Theme.Font
LMG2L["ToggleLabel_d"].Text = ""
LMG2L["ToggleLabel_d"].TextColor3 = Theme.SubText
LMG2L["ToggleLabel_d"].TextSize = 18
LMG2L["ToggleLabel_d"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["ToggleOutline_e"] = Instance.new("Frame",LMG2L["ToggleFrame_c"])
LMG2L["ToggleOutline_e"].BackgroundColor3 = Theme.Third
LMG2L["ToggleOutline_e"].BorderSizePixel = 0
LMG2L["ToggleOutline_e"].Position = UDim2.fromOffset(152,3)
LMG2L["ToggleOutline_e"].Size = UDim2.fromOffset(20,20)
LMG2L["ToggleOutlineCorner_f"] = Instance.new("UICorner",LMG2L["ToggleOutline_e"])
LMG2L["ToggleOutlineCorner_f"].CornerRadius = UDim.new(0,4)
LMG2L["ToggleButton_10"] = Instance.new("TextButton",LMG2L["ToggleOutline_e"])
LMG2L["ToggleButton_10"].BackgroundColor3 = Theme.Main
LMG2L["ToggleButton_10"].BorderSizePixel = 0
LMG2L["ToggleButton_10"].Position = UDim2.fromOffset(2,2)
LMG2L["ToggleButton_10"].Size = UDim2.fromOffset(16,16)
LMG2L["ToggleButton_10"].Font = Theme.Font
LMG2L["ToggleButton_10"].Text = ""
LMG2L["ToggleButton_10"].TextSize = 16
LMG2L["ToggleButtonCorner_11"] = Instance.new("UICorner",LMG2L["ToggleButton_10"])
LMG2L["ToggleButtonCorner_11"].CornerRadius = UDim.new(0,3)
LMG2L["ButtonFrame_12"] = Instance.new("Frame")
LMG2L["ButtonFrame_12"].BackgroundTransparency = 1
LMG2L["ButtonFrame_12"].BorderSizePixel = 0
LMG2L["ButtonFrame_12"].Size = UDim2.fromOffset(180,26)
LMG2L["RealButton_13"] = Instance.new("TextButton",LMG2L["ButtonFrame_12"])
LMG2L["RealButton_13"].BackgroundColor3 = Theme.Outline
LMG2L["RealButton_13"].BorderSizePixel = 0
LMG2L["RealButton_13"].Position = UDim2.fromOffset(20,3)
LMG2L["RealButton_13"].Size = UDim2.fromOffset(140,20)
LMG2L["RealButton_13"].Font = Theme.Font
LMG2L["RealButton_13"].Text = ""
LMG2L["RealButton_13"].TextColor3 = Theme.ButtonText
LMG2L["RealButton_13"].TextSize = 18
LMG2L["RealButtonCorner_14"] = Instance.new("UICorner",LMG2L["RealButton_13"])
LMG2L["RealButtonCorner_14"].CornerRadius = UDim.new(0,4)
LMG2L["SliderFrame_15"] = Instance.new("Frame")
LMG2L["SliderFrame_15"].BackgroundTransparency = 1
LMG2L["SliderFrame_15"].BorderSizePixel = 0
LMG2L["SliderFrame_15"].Size = UDim2.fromOffset(180,40)
LMG2L["SliderLabel_16"] = Instance.new("TextLabel",LMG2L["SliderFrame_15"])
LMG2L["SliderLabel_16"].BackgroundTransparency = 1
LMG2L["SliderLabel_16"].BorderSizePixel = 0
LMG2L["SliderLabel_16"].Size = UDim2.fromOffset(125,26)
LMG2L["SliderLabel_16"].Font = Theme.Font
LMG2L["SliderLabel_16"].Text = ""
LMG2L["SliderLabel_16"].TextColor3 = Theme.SubText
LMG2L["SliderLabel_16"].TextSize = 18
LMG2L["SliderLabel_16"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["SliderBoxOutline_17"] = Instance.new("Frame",LMG2L["SliderFrame_15"])
LMG2L["SliderBoxOutline_17"].BackgroundColor3 = Theme.Third
LMG2L["SliderBoxOutline_17"].BorderSizePixel = 0
LMG2L["SliderBoxOutline_17"].Position = UDim2.fromOffset(137,3)
LMG2L["SliderBoxOutline_17"].Size = UDim2.fromOffset(35,20)
LMG2L["SliderBoxOutlineCorner_18"] = Instance.new("UICorner",LMG2L["SliderBoxOutline_17"])
LMG2L["SliderBoxOutlineCorner_18"].CornerRadius = UDim.new(0,4)
LMG2L["SliderBox_19"] = Instance.new("TextBox",LMG2L["SliderBoxOutline_17"])
LMG2L["SliderBox_19"].BackgroundColor3 = Theme.Secondary
LMG2L["SliderBox_19"].BorderSizePixel = 0
LMG2L["SliderBox_19"].Position = UDim2.fromOffset(2,2)
LMG2L["SliderBox_19"].Size = UDim2.fromOffset(31,16)
LMG2L["SliderBox_19"].Font = Theme.Font
LMG2L["SliderBox_19"].Text = ""
LMG2L["SliderBox_19"].TextColor3 = Theme.SubText
LMG2L["SliderBox_19"].TextSize = 14
LMG2L["SliderBoxCorner_1a"] = Instance.new("UICorner",LMG2L["SliderBox_19"])
LMG2L["SliderBoxCorner_1a"].CornerRadius = UDim.new(0,3)
LMG2L["SliderTrack_1b"] = Instance.new("TextButton",LMG2L["SliderFrame_15"])
LMG2L["SliderTrack_1b"].AutoButtonColor = false
LMG2L["SliderTrack_1b"].BackgroundColor3 = Theme.Third
LMG2L["SliderTrack_1b"].BorderSizePixel = 0
LMG2L["SliderTrack_1b"].Position = UDim2.fromOffset(10,29)
LMG2L["SliderTrack_1b"].Size = UDim2.fromOffset(160,4)
LMG2L["SliderTrack_1b"].Text = ""
LMG2L["SliderTrackCorner_1c"] = Instance.new("UICorner",LMG2L["SliderTrack_1b"])
LMG2L["SliderTrackCorner_1c"].CornerRadius = UDim.new(0,4)
LMG2L["SliderFill_1d"] = Instance.new("TextButton",LMG2L["SliderTrack_1b"])
LMG2L["SliderFill_1d"].AutoButtonColor = false
LMG2L["SliderFill_1d"].BackgroundColor3 = Theme.Outline
LMG2L["SliderFill_1d"].BorderSizePixel = 0
LMG2L["SliderFill_1d"].Size = UDim2.fromScale(0,1)
LMG2L["SliderFill_1d"].Text = ""
LMG2L["SliderFillCorner_1e"] = Instance.new("UICorner",LMG2L["SliderFill_1d"])
LMG2L["SliderFillCorner_1e"].CornerRadius = UDim.new(0,4)
LMG2L["SliderCircle_1f"] = Instance.new("TextButton",LMG2L["SliderTrack_1b"])
LMG2L["SliderCircle_1f"].AutoButtonColor = false
LMG2L["SliderCircle_1f"].BackgroundColor3 = Theme.Outline
LMG2L["SliderCircle_1f"].BorderSizePixel = 0
LMG2L["SliderCircle_1f"].Position = UDim2.new(0,-6,-0.75,0)
LMG2L["SliderCircle_1f"].Size = UDim2.fromOffset(12,12)
LMG2L["SliderCircle_1f"].ZIndex = 3
LMG2L["SliderCircle_1f"].Text = ""
LMG2L["SliderCircleCorner_20"] = Instance.new("UICorner",LMG2L["SliderCircle_1f"])
LMG2L["SliderCircleCorner_20"].CornerRadius = UDim.new(1,0)
LMG2L["DropdownFrame_21"] = Instance.new("Frame")
LMG2L["DropdownFrame_21"].BackgroundTransparency = 1
LMG2L["DropdownFrame_21"].BorderSizePixel = 0
LMG2L["DropdownFrame_21"].Size = UDim2.fromOffset(180,26)
LMG2L["DropdownLabel_22"] = Instance.new("TextLabel",LMG2L["DropdownFrame_21"])
LMG2L["DropdownLabel_22"].BackgroundTransparency = 1
LMG2L["DropdownLabel_22"].BorderSizePixel = 0
LMG2L["DropdownLabel_22"].Size = UDim2.fromOffset(160,26)
LMG2L["DropdownLabel_22"].Font = Theme.Font
LMG2L["DropdownLabel_22"].Text = ""
LMG2L["DropdownLabel_22"].TextColor3 = Theme.SubText
LMG2L["DropdownLabel_22"].TextSize = 18
LMG2L["DropdownLabel_22"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["DropdownExpand_23"] = Instance.new("TextButton",LMG2L["DropdownFrame_21"])
LMG2L["DropdownExpand_23"].BackgroundTransparency = 1
LMG2L["DropdownExpand_23"].BorderSizePixel = 0
LMG2L["DropdownExpand_23"].Position = UDim2.fromOffset(155,0)
LMG2L["DropdownExpand_23"].Size = UDim2.fromOffset(25,25)
LMG2L["DropdownExpand_23"].Font = Theme.Font
LMG2L["DropdownExpand_23"].Text = ">"
LMG2L["DropdownExpand_23"].TextColor3 = Theme.MainText
LMG2L["DropdownExpand_23"].TextSize = 20
LMG2L["DropdownOptions_24"] = Instance.new("ScrollingFrame",LMG2L["DropdownFrame_21"])
LMG2L["DropdownOptions_24"].BackgroundColor3 = Theme.Secondary
LMG2L["DropdownOptions_24"].BorderSizePixel = 0
LMG2L["DropdownOptions_24"].Position = UDim2.fromOffset(200,0)
LMG2L["DropdownOptions_24"].Size = UDim2.fromOffset(120,0)
LMG2L["DropdownOptions_24"].CanvasSize = UDim2.fromScale(0,0)
LMG2L["DropdownOptions_24"].ScrollBarThickness = 1
LMG2L["DropdownOptions_24"].ScrollingDirection = Enum.ScrollingDirection.Y
LMG2L["DropdownOptions_24"].Visible = false
LMG2L["DropdownOptionsCorner_25"] = Instance.new("UICorner",LMG2L["DropdownOptions_24"])
LMG2L["DropdownOptionsCorner_25"].CornerRadius = UDim.new(0,4)
LMG2L["DropdownOptionsList_26"] = Instance.new("UIListLayout",LMG2L["DropdownOptions_24"])
LMG2L["DropdownOptionsList_26"].SortOrder = Enum.SortOrder.LayoutOrder
LMG2L["DropdownItem_27"] = Instance.new("TextButton")
LMG2L["DropdownItem_27"].BackgroundTransparency = 1
LMG2L["DropdownItem_27"].BorderSizePixel = 0
LMG2L["DropdownItem_27"].Size = UDim2.fromOffset(120,25)
LMG2L["DropdownItem_27"].Font = Theme.Font
LMG2L["DropdownItem_27"].Text = ""
LMG2L["DropdownItem_27"].TextColor3 = Theme.SubText
LMG2L["DropdownItem_27"].TextSize = 18
LMG2L["DropdownItem_27"].TextXAlignment = Enum.TextXAlignment.Left

Normalizer = {}
Normalizer.CreateWindow = newcclosure(function(Name)
	local Window = {name=Name,expanded=true,sections={}}
	table.insert(Windows,Window)
	local Background = LMG2L["WindowTemplate_1"]:Clone()
	Background.Parent = LMG2L["ScreenGui_1"]
	Background.Position = UDim2.fromOffset(10+(#Windows-1)*190,10)
	local Container = Background:FindFirstChild("Frame")
	local ContentList = Container:FindFirstChildOfClass("UIListLayout")
	local CloseButton = Background:FindFirstChildOfClass("TextButton")
	local TitleLabel = Background:FindFirstChildOfClass("TextLabel")
	local Dragging = false
	local DragInput = nil
	local StartPosition = nil
	local DragStart = Vector3.new()
	TitleLabel.Text = " "..Name
	Normalizer.Resize = function()
		Background.Size = UDim2.fromOffset(180,ContentList.AbsoluteContentSize.Y+28)
		Container.Size = UDim2.fromOffset(180,ContentList.AbsoluteContentSize.Y)
	end
	Normalizer.UpdateDrag = function(Input)
		local Delta = Input.Position - DragStart
		Background.Position = UDim2.new(
			StartPosition.X.Scale,
			StartPosition.X.Offset+Delta.X,
			StartPosition.Y.Scale,
			StartPosition.Y.Offset+Delta.Y
		)
	end
	table.insert(Connections,ContentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(Normalizer.Resize))
	table.insert(Connections,CloseButton.MouseButton1Click:Connect(function()
		Window.expanded = not Window.expanded
		CloseButton.Text = Window.expanded and "-" or "+"
		Container.Visible = Window.expanded
		if Window.expanded then Normalizer.Resize() else Background.Size = UDim2.fromOffset(180,25) end
	end))
	table.insert(Connections,TitleLabel.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = Input.Position
			StartPosition = Background.Position
		end
	end))
	table.insert(Connections,TitleLabel.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
			Dragging = false
		end
	end))
	if IsMobile then
		table.insert(Connections,TitleLabel.InputChanged:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.Touch and Dragging then
				Normalizer.UpdateDrag(Input)
			end
		end))
	else
		table.insert(Connections,TitleLabel.InputChanged:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement then
				DragInput = Input
			end
		end))
		table.insert(Connections,GetService.UserInputService.InputChanged:Connect(function(Input)
			if Input == DragInput and Dragging then
				Normalizer.UpdateDrag(Input)
			end
		end))
	end
	Window.CreateSection = newcclosure(function(SectionName)
		local Section = {name=SectionName,expanded=false,options={}}
		table.insert(Window.sections,Section)
		local SectionFrame = LMG2L["SectionLabel_8"]:Clone()
		SectionFrame.Text = " "..SectionName
		SectionFrame.LayoutOrder = #Window.sections * 2 - 1
		SectionFrame.Parent = Container
		local SectionContainer = LMG2L["SectionContainer_a"]:Clone()
		SectionContainer.LayoutOrder = #Window.sections * 2
		SectionContainer.Parent = Container
		local SectionList = SectionContainer:FindFirstChildOfClass("UIListLayout")
		local ExpandButton = SectionFrame:FindFirstChildOfClass("TextButton")
		table.insert(Connections,SectionList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			SectionContainer.Size = UDim2.fromOffset(180,SectionList.AbsoluteContentSize.Y)
			Normalizer.Resize()
		end))
		Normalizer.ToggleSection = function()
			Section.expanded = not Section.expanded
			ExpandButton.Text = Section.expanded and ">" or "<"
			SectionContainer.Visible = Section.expanded
			Normalizer.Resize()
		end
		table.insert(Connections,ExpandButton.MouseButton1Click:Connect(Normalizer.ToggleSection))
		if IsMobile then
			table.insert(Connections,ExpandButton.TouchTap:Connect(Normalizer.ToggleSection))
		end
		Section.CreateToggle = newcclosure(function(Args)
			local Toggle = {Enabled=false,tween=nil,callback=Args.Callback or function()end}
			table.insert(Section.options,Toggle)
			local ToggleFrame = LMG2L["ToggleFrame_c"]:Clone()
			ToggleFrame.LayoutOrder = #Section.options
			ToggleFrame.Parent = SectionContainer
			ToggleFrame:FindFirstChildOfClass("TextLabel").Text = " "..Args.Name
			local ToggleButton = ToggleFrame:FindFirstChildOfClass("Frame"):FindFirstChildOfClass("TextButton")
			Toggle.container = ToggleFrame
			Toggle.Toggle = function(State)
				if State == nil then State = not Toggle.Enabled end
				if State == Toggle.Enabled then return end
				Toggle.Enabled = State
				if Toggle.tween then Toggle.tween:Cancel() end
				Toggle.tween = GetService.TweenService:Create(ToggleButton,TweenInfo.new(.2),{BackgroundColor3 = State and Theme.Outline or Theme.Main})
				Toggle.tween:Play()
				task.spawn(Toggle.callback,State)
			end
			Normalizer.OnToggle = function() Toggle.Toggle() end
			table.insert(Connections,ToggleButton.MouseButton1Click:Connect(Normalizer.OnToggle))
			if IsMobile then
				table.insert(Connections,ToggleButton.TouchTap:Connect(Normalizer.OnToggle))
			end
			Toggle.Toggle(Args.Default or false)
			return Toggle
		end)
		Section.CreateButton = newcclosure(function(Args)
			local Button = {callback=Args.Callback or function()end}
			table.insert(Section.options,Button)
			local ButtonFrame = LMG2L["ButtonFrame_12"]:Clone()
			ButtonFrame.LayoutOrder = #Section.options
			ButtonFrame.Parent = SectionContainer
			local RealButton = ButtonFrame:FindFirstChildOfClass("TextButton")
			RealButton.Text = Args.Name
			Button.container = ButtonFrame
			Normalizer.OnClick = function()
				task.spawn(Button.callback)
				RealButton.Text = Args.CallbackText or Args.Name
				task.wait(2)
				RealButton.Text = Args.Name
			end
			table.insert(Connections,RealButton.MouseButton1Click:Connect(Normalizer.OnClick))
			if IsMobile then
				table.insert(Connections,RealButton.TouchTap:Connect(Normalizer.OnClick))
			end
			return Button
		end)
		Section.CreateSlider = newcclosure(function(Args)
			local Slider = {Value=Args.Default or Args.Min,callback=Args.Callback or function()end}
			table.insert(Section.options,Slider)
			local SliderFrame = LMG2L["SliderFrame_15"]:Clone()
			SliderFrame.LayoutOrder = #Section.options
			SliderFrame.Parent = SectionContainer
			SliderFrame:FindFirstChildOfClass("TextLabel").Text = " "..Args.Name
			local Track = SliderFrame:FindFirstChildOfClass("TextButton")
			local Fill = Track:FindFirstChildOfClass("TextButton")
			local Circle = Track:FindFirstChild("SliderCircle_1f")
			local InputBox = SliderFrame:FindFirstChildOfClass("Frame"):FindFirstChildOfClass("TextBox")
			local Decimal = Args.Decimal or 0
			local Sliding = false
			Slider.container = SliderFrame
			Slider.Set = function(Value)
				Value = math.floor((math.clamp(Value or Args.Min,Args.Min,Args.Max)*(10^Decimal))+.5)/(10^Decimal)
				Slider.Value = Value
				local Scale = (Value-Args.Min)/(Args.Max-Args.Min)
				GetService.TweenService:Create(Fill,TweenInfo.new(.15),{Size=UDim2.fromScale(Scale,1)}):Play()
				GetService.TweenService:Create(Circle,TweenInfo.new(.15),{Position=UDim2.new(Scale,-6,-0.75,0)}):Play()
				InputBox.PlaceholderText = tostring(Value)
				task.spawn(Slider.callback,Value)
			end
			Normalizer.SlideFromInput = function(Input)
				local Scale = math.clamp((Input.Position.X-Track.AbsolutePosition.X)/Track.AbsoluteSize.X,0,1)
				local Value = math.floor(((((Args.Max-Args.Min)*Scale)+Args.Min)*(10^Decimal))+.5)/(10^Decimal)
				Slider.Value = Value
				Fill.Size = UDim2.fromScale(Scale,1)
				Circle.Position = UDim2.new(Scale,-6,-0.75,0)
				InputBox.PlaceholderText = tostring(Value)
				task.spawn(Slider.callback,Value)
			end
			for i, v in next, {Track,Fill,Circle} do
				table.insert(Connections,v.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						Sliding = true
						Normalizer.SlideFromInput(Input)
					end
				end))
				table.insert(Connections,v.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						Sliding = false
					end
				end))
				if IsMobile then
					table.insert(Connections,v.InputChanged:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.Touch and Sliding then
							Normalizer.SlideFromInput(Input)
						end
					end))
				end
			end
			if not IsMobile then
				table.insert(Connections,GetService.UserInputService.InputChanged:Connect(function(Input)
					if Sliding and Input.UserInputType == Enum.UserInputType.MouseMovement then
						Normalizer.SlideFromInput(Input)
					end
				end))
			end
			table.insert(Connections,InputBox.FocusLost:Connect(function(Confirmed)
				if not Confirmed then return end
				Slider.Set(tonumber(InputBox.Text))
				InputBox.Text = ""
			end))
			Slider.Set(Slider.Value)
			return Slider
		end)
		Section.CreateDropdown = newcclosure(function(Args)
			local Dropdown = {List=Args.List,Value=Args.Default or Args.List[1],Expanded=false,callback=Args.Callback or function()end}
			table.insert(Section.options,Dropdown)
			local DropdownFrame = LMG2L["DropdownFrame_21"]:Clone()
			DropdownFrame.LayoutOrder = #Section.options
			DropdownFrame.Parent = SectionContainer
			local DropdownLabel = DropdownFrame:FindFirstChildOfClass("TextLabel")
			local DropdownExpand = DropdownFrame:FindFirstChildOfClass("TextButton")
			local DropdownOptions = DropdownFrame:FindFirstChildOfClass("ScrollingFrame")
			local DropdownList = DropdownOptions:FindFirstChildOfClass("UIListLayout")
			DropdownLabel.Text = " "..Args.Name..": "..tostring(Dropdown.Value)
			Dropdown.container = DropdownFrame
			Dropdown.Set = function(Value)
				if not table.find(Dropdown.List,Value) then return end
				Dropdown.Value = Value
				DropdownLabel.Text = " "..Args.Name..": "..tostring(Value)
				task.spawn(Dropdown.callback,Value)
				for i, v in next, DropdownOptions:GetChildren() do
					if v:IsA("TextButton") then v.Visible = v.Name ~= Value end
				end
			end
			Dropdown.Expand = function(State)
				if State == nil then State = not Dropdown.Expanded end
				if State == Dropdown.Expanded then return end
				Dropdown.Expanded = State
				DropdownExpand.Text = State and "<" or ">"
				DropdownOptions.Visible = State
			end
			Normalizer.OnExpand = function() Dropdown.Expand() end
			table.insert(Connections,DropdownExpand.MouseButton1Click:Connect(Normalizer.OnExpand))
			if IsMobile then
				table.insert(Connections,DropdownExpand.TouchTap:Connect(Normalizer.OnExpand))
			end
			for i, v in next, Args.List do
				local Item = LMG2L["DropdownItem_27"]:Clone()
				Item.Name = v
				Item.Text = " "..v
				Item.Parent = DropdownOptions
				Normalizer.OnSelect = function()
					Dropdown.Set(v)
					Dropdown.Expand(false)
				end
				table.insert(Connections,Item.MouseButton1Click:Connect(Normalizer.OnSelect))
				if IsMobile then
					table.insert(Connections,Item.TouchTap:Connect(Normalizer.OnSelect))
				end
			end
			table.insert(Connections,DropdownList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				local ContentHeight = DropdownList.AbsoluteContentSize.Y
				DropdownOptions.Size = UDim2.fromOffset(120,ContentHeight > 100 and 100 or ContentHeight)
				DropdownOptions.CanvasSize = UDim2.fromOffset(120,ContentHeight)
			end))
			Dropdown.Set(Dropdown.Value)
			return Dropdown
		end)
		Section.CreateMultiDropdown = newcclosure(function(Args)
			local ChoosedList = Args.DefaultList or {}
			local MultiDropdown = {List=Args.List,ChoosedList=ChoosedList,Expanded=false,tweens={},callback=Args.Callback or function()end}
			table.insert(Section.options,MultiDropdown)
			local DropdownFrame = LMG2L["DropdownFrame_21"]:Clone()
			DropdownFrame.LayoutOrder = #Section.options
			DropdownFrame.Parent = SectionContainer
			local DropdownLabel = DropdownFrame:FindFirstChildOfClass("TextLabel")
			local DropdownExpand = DropdownFrame:FindFirstChildOfClass("TextButton")
			local DropdownOptions = DropdownFrame:FindFirstChildOfClass("ScrollingFrame")
			local DropdownList = DropdownOptions:FindFirstChildOfClass("UIListLayout")
			DropdownLabel.Text = " "..Args.Name..": "..(#ChoosedList == 0 and "none" or #ChoosedList == 1 and ChoosedList[1] or "...")
			MultiDropdown.container = DropdownFrame
			MultiDropdown.Set = function(Value)
				if not table.find(MultiDropdown.List,Value) then return end
				if MultiDropdown.tweens[Value] then MultiDropdown.tweens[Value]:Cancel() end
				local State = not table.find(ChoosedList,Value)
				local OptionItem = DropdownOptions:FindFirstChild(Value)
				if State then
					if table.find(ChoosedList,Value) then return end
					table.insert(ChoosedList,Value)
				else
					if not table.find(ChoosedList,Value) then return end
					table.remove(ChoosedList,table.find(ChoosedList,Value))
				end
				if OptionItem then
					MultiDropdown.tweens[Value] = GetService.TweenService:Create(OptionItem,TweenInfo.new(.2),{BackgroundColor3 = State and Theme.Outline or Theme.Secondary})
					MultiDropdown.tweens[Value]:Play()
				end
				DropdownLabel.Text = " "..Args.Name..": "..(#ChoosedList == 0 and "none" or #ChoosedList == 1 and ChoosedList[1] or "...")
				MultiDropdown.ChoosedList = ChoosedList
				task.spawn(MultiDropdown.callback,Value,State)
			end
			MultiDropdown.Expand = function(State)
				if State == nil then State = not MultiDropdown.Expanded end
				if State == MultiDropdown.Expanded then return end
				MultiDropdown.Expanded = State
				DropdownExpand.Text = State and "<" or ">"
				DropdownOptions.Visible = State
			end
			Normalizer.OnMultiExpand = function() MultiDropdown.Expand() end
			table.insert(Connections,DropdownExpand.MouseButton1Click:Connect(Normalizer.OnMultiExpand))
			if IsMobile then
				table.insert(Connections,DropdownExpand.TouchTap:Connect(Normalizer.OnMultiExpand))
			end
			for i, v in next, Args.List do
				local Item = LMG2L["DropdownItem_27"]:Clone()
				Item.Name = v
				Item.Text = " "..v
				Item.BackgroundColor3 = Theme.Secondary
				Item.BackgroundTransparency = 0
				Item.Parent = DropdownOptions
				Normalizer.OnMultiSelect = function() MultiDropdown.Set(v) end
				table.insert(Connections,Item.MouseButton1Click:Connect(Normalizer.OnMultiSelect))
				if IsMobile then
					table.insert(Connections,Item.TouchTap:Connect(Normalizer.OnMultiSelect))
				end
			end
			for i, v in next, ChoosedList do
				MultiDropdown.Set(v)
			end
			table.insert(Connections,DropdownList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				local ContentHeight = DropdownList.AbsoluteContentSize.Y
				DropdownOptions.Size = UDim2.fromOffset(120,ContentHeight > 100 and 100 or ContentHeight)
				DropdownOptions.CanvasSize = UDim2.fromOffset(120,ContentHeight)
			end))
			return MultiDropdown
		end)
		return Section
	end)
	return Window
end)
Normalizer.Destruct = newcclosure(function()
	for i, v in next, Connections do v:Disconnect() end
	LMG2L["ScreenGui_1"]:Destroy()
end)

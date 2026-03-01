local GetService = setmetatable({}, {
	__index = function(s, n)
		s[n] = (cloneref and clonefunction(cloneref) or function(x) return x end)(clonefunction(game.GetService)(game, n))
		return s[n]
	end
})
local _ = {}
local __ = {}
local LMG2L = {};
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
		arries[i] = string.char(math.random(32, 126))
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
LMG2L["Container_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"])
LMG2L["Container_2"].BorderSizePixel = 0
LMG2L["Container_2"].Size = UDim2.new(1, 0, 1, 0)
LMG2L["Container_2"].Name = "Container"
LMG2L["Container_2"].BackgroundTransparency = 1
LMG2L["Container_2"].ClipsDescendants = false
LMG2L["UIListLayout_3"] = Instance.new("UIListLayout", LMG2L["Container_2"])
LMG2L["UIListLayout_3"].HorizontalAlignment = Enum.HorizontalAlignment.Right
LMG2L["UIListLayout_3"].Padding = UDim.new(0, 4)
LMG2L["UIListLayout_3"].VerticalAlignment = Enum.VerticalAlignment.Bottom
LMG2L["UIListLayout_3"].SortOrder = Enum.SortOrder.LayoutOrder
LMG2L["UIPadding_4"] = Instance.new("UIPadding", LMG2L["Container_2"])
LMG2L["UIPadding_4"].PaddingRight = UDim.new(0, 8)
LMG2L["UIPadding_4"].PaddingBottom = UDim.new(0, 8)
LMG2L["Frame_5"] = Instance.new("Frame")
LMG2L["Frame_5"].BorderSizePixel = 0
LMG2L["Frame_5"].Size = UDim2.new(0, 184, 0, 82)
LMG2L["Frame_5"].BackgroundTransparency = 1
LMG2L["Frame_5"].ClipsDescendants = false
LMG2L["Frame_2_6"] = Instance.new("Frame", LMG2L["Frame_5"])
LMG2L["Frame_2_6"].BorderSizePixel = 0
LMG2L["Frame_2_6"].BackgroundColor3 = Color3.fromRGB(61, 61, 61)
LMG2L["Frame_2_6"].Size = UDim2.new(0, 184, 0, 82)
LMG2L["Frame_2_6"].Name = "Frame_2"
LMG2L["UIStroke_7"] = Instance.new("UIStroke", LMG2L["Frame_2_6"])
LMG2L["UIStroke_7"].Thickness = 2
LMG2L["UIStroke_7"].Color = Color3.fromRGB(63, 205, 212)
LMG2L["Title_8"] = Instance.new("TextLabel", LMG2L["Frame_2_6"])
LMG2L["Title_8"].TextTruncate = Enum.TextTruncate.SplitWord
LMG2L["Title_8"].BorderSizePixel = 0
LMG2L["Title_8"].TextSize = 14
LMG2L["Title_8"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Title_8"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["Title_8"].FontFace = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["Title_8"].TextColor3 = Color3.fromRGB(63, 205, 212)
LMG2L["Title_8"].BackgroundTransparency = 1
LMG2L["Title_8"].Size = UDim2.new(0, 182, 0, 14)
LMG2L["Title_8"].Text = ""
LMG2L["Title_8"].Name = "Title"
LMG2L["Title_8"].Position = UDim2.new(0, 2, 0, -2)
LMG2L["TextLabel_5_9"] = Instance.new("TextLabel", LMG2L["Frame_2_6"])
LMG2L["TextLabel_5_9"].BorderSizePixel = 0
LMG2L["TextLabel_5_9"].BackgroundColor3 = Color3.fromRGB(63, 205, 212)
LMG2L["TextLabel_5_9"].Size = UDim2.new(0, 180, 0, 2)
LMG2L["TextLabel_5_9"].Text = ""
LMG2L["TextLabel_5_9"].Name = "TextLabel_5"
LMG2L["TextLabel_5_9"].Position = UDim2.new(0, 2, 0, 12)
LMG2L["Text_a"] = Instance.new("TextLabel", LMG2L["Frame_2_6"])
LMG2L["Text_a"].TextWrapped = true
LMG2L["Text_a"].TextTruncate = Enum.TextTruncate.AtEnd
LMG2L["Text_a"].BorderSizePixel = 0
LMG2L["Text_a"].TextSize = 13
LMG2L["Text_a"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["Text_a"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["Text_a"].FontFace = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["Text_a"].TextColor3 = Color3.fromRGB(231, 231, 231)
LMG2L["Text_a"].BackgroundTransparency = 1
LMG2L["Text_a"].Size = UDim2.new(0, 180, 0, 48)
LMG2L["Text_a"].Text = ""
LMG2L["Text_a"].Name = "Text"
LMG2L["Text_a"].Position = UDim2.new(0, 2, 0, 14)
LMG2L["Frame_6_b"] = Instance.new("Frame", LMG2L["Frame_2_6"])
LMG2L["Frame_6_b"].BorderSizePixel = 0
LMG2L["Frame_6_b"].Size = UDim2.new(0, 182, 0, 14)
LMG2L["Frame_6_b"].Position = UDim2.new(0, 2, 0, 66)
LMG2L["Frame_6_b"].Name = "Frame_6"
LMG2L["Frame_6_b"].BackgroundTransparency = 1
LMG2L["TextButton_7_c"] = Instance.new("TextButton", LMG2L["Frame_6_b"])
LMG2L["TextButton_7_c"].TextTruncate = Enum.TextTruncate.SplitWord
LMG2L["TextButton_7_c"].BorderSizePixel = 0
LMG2L["TextButton_7_c"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["TextButton_7_c"].TextSize = 14
LMG2L["TextButton_7_c"].TextColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["TextButton_7_c"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["TextButton_7_c"].FontFace = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["TextButton_7_c"].BackgroundTransparency = 1
LMG2L["TextButton_7_c"].Size = UDim2.new(1, 0, 1, 0)
LMG2L["TextButton_7_c"].Text = ""
LMG2L["TextButton_7_c"].Name = "TextButton_7"
LMG2L["TextButton_7_c"].Position = UDim2.new(0, 2, 0, 0)
LMG2L["UIStroke_d"] = Instance.new("UIStroke", LMG2L["Frame_6_b"])
LMG2L["UIStroke_d"].Color = Color3.fromRGB(63, 205, 212)
LMG2L["Frame_9_e"] = Instance.new("Frame", LMG2L["Frame_2_6"])
LMG2L["Frame_9_e"].BorderSizePixel = 0
LMG2L["Frame_9_e"].Size = UDim2.new(0, 44, 0, 14)
LMG2L["Frame_9_e"].Position = UDim2.new(0, 48, 0, 66)
LMG2L["Frame_9_e"].Name = "Frame_9"
LMG2L["Frame_9_e"].BackgroundTransparency = 1
LMG2L["TextButton_10_f"] = Instance.new("TextButton", LMG2L["Frame_9_e"])
LMG2L["TextButton_10_f"].TextTruncate = Enum.TextTruncate.SplitWord
LMG2L["TextButton_10_f"].BorderSizePixel = 0
LMG2L["TextButton_10_f"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["TextButton_10_f"].TextSize = 14
LMG2L["TextButton_10_f"].TextColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["TextButton_10_f"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["TextButton_10_f"].FontFace = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["TextButton_10_f"].BackgroundTransparency = 1
LMG2L["TextButton_10_f"].Size = UDim2.new(1, 0, 1, 0)
LMG2L["TextButton_10_f"].Text = ""
LMG2L["TextButton_10_f"].Name = "TextButton_10"
LMG2L["TextButton_10_f"].Position = UDim2.new(0, 2, 0, 0)
LMG2L["UIStroke_10"] = Instance.new("UIStroke", LMG2L["Frame_9_e"])
LMG2L["UIStroke_10"].Color = Color3.fromRGB(63, 205, 212)
LMG2L["Frame_12_11"] = Instance.new("Frame", LMG2L["Frame_2_6"])
LMG2L["Frame_12_11"].BorderSizePixel = 0
LMG2L["Frame_12_11"].Size = UDim2.new(0, 44, 0, 14)
LMG2L["Frame_12_11"].Position = UDim2.new(0, 94, 0, 66)
LMG2L["Frame_12_11"].Name = "Frame_12"
LMG2L["Frame_12_11"].BackgroundTransparency = 1
LMG2L["TextButton_13_12"] = Instance.new("TextButton", LMG2L["Frame_12_11"])
LMG2L["TextButton_13_12"].TextTruncate = Enum.TextTruncate.SplitWord
LMG2L["TextButton_13_12"].BorderSizePixel = 0
LMG2L["TextButton_13_12"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["TextButton_13_12"].TextSize = 14
LMG2L["TextButton_13_12"].TextColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["TextButton_13_12"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["TextButton_13_12"].FontFace = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["TextButton_13_12"].BackgroundTransparency = 1
LMG2L["TextButton_13_12"].Size = UDim2.new(1, 0, 1, 0)
LMG2L["TextButton_13_12"].Text = ""
LMG2L["TextButton_13_12"].Name = "TextButton_13"
LMG2L["TextButton_13_12"].Position = UDim2.new(0, 2, 0, 0)
LMG2L["UIStroke_13"] = Instance.new("UIStroke", LMG2L["Frame_12_11"])
LMG2L["UIStroke_13"].Color = Color3.fromRGB(63, 205, 212)
LMG2L["Frame_15_14"] = Instance.new("Frame", LMG2L["Frame_2_6"])
LMG2L["Frame_15_14"].BorderSizePixel = 0
LMG2L["Frame_15_14"].Size = UDim2.new(0, 44, 0, 14)
LMG2L["Frame_15_14"].Position = UDim2.new(0, 140, 0, 66)
LMG2L["Frame_15_14"].Name = "Frame_15"
LMG2L["Frame_15_14"].BackgroundTransparency = 1
LMG2L["TextButton_16_15"] = Instance.new("TextButton", LMG2L["Frame_15_14"])
LMG2L["TextButton_16_15"].TextTruncate = Enum.TextTruncate.SplitWord
LMG2L["TextButton_16_15"].BorderSizePixel = 0
LMG2L["TextButton_16_15"].TextXAlignment = Enum.TextXAlignment.Left
LMG2L["TextButton_16_15"].TextSize = 14
LMG2L["TextButton_16_15"].TextColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["TextButton_16_15"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["TextButton_16_15"].FontFace = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["TextButton_16_15"].BackgroundTransparency = 1
LMG2L["TextButton_16_15"].Size = UDim2.new(1, 0, 1, 0)
LMG2L["TextButton_16_15"].Text = ""
LMG2L["TextButton_16_15"].Name = "TextButton_16"
LMG2L["TextButton_16_15"].Position = UDim2.new(0, 2, 0, 0)
LMG2L["UIStroke_16"] = Instance.new("UIStroke", LMG2L["Frame_15_14"])
LMG2L["UIStroke_16"].Color = Color3.fromRGB(63, 205, 212)
LMG2L["Duration_17"] = Instance.new("TextLabel", LMG2L["Frame_2_6"])
LMG2L["Duration_17"].BorderSizePixel = 0
LMG2L["Duration_17"].BackgroundColor3 = Color3.fromRGB(101, 101, 101)
LMG2L["Duration_17"].Size = UDim2.new(1, 0, 0, 2)
LMG2L["Duration_17"].Text = ""
LMG2L["Duration_17"].Name = "Duration"
LMG2L["Duration_17"].Position = UDim2.new(0, 0, 0, -2)
function Dismiss(Holder, Inner)
	Inner:TweenPosition(UDim2.new(1, 4, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, .35, false, function()
		for i, v in next, _, nil do
			if v == Holder then
				table.remove(_, i)
				break
			end
		end
		Holder:Destroy()
		if #__ > 0 then
			task.spawn(table.remove(__, 1))
		end
	end)
end
getgenv().SendNotification = newcclosure(function(Opts)
	if type(Opts) ~= "table" then return end
	if type(Opts.Title) ~= "string" then return end
	if type(Opts.Text) ~= "string" then return end
	if #_ >= 4 then
		table.insert(__, function()
			getgenv().SendNotification(Opts)
		end)
		return
	end
	local Holder = LMG2L["Frame_5"]:Clone()
	Holder.Parent = LMG2L["Container_2"]
	table.insert(_, Holder)
	local Inner = Holder:FindFirstChild("Frame_2")
	Inner.Position = UDim2.new(1, 4, 0, 0)
	Inner:TweenPosition(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, .35, false)
	Inner:FindFirstChild("Title").Text = Opts.Title
	Inner:FindFirstChild("Text").Text = Opts.Text
	local Bar = Inner:FindFirstChild("Duration")
	local Duration = type(Opts.Duration) == "number" and Opts.Duration or 10
	if Duration < 1 then Duration = 1 end
	local Callback = nil
	if type(Opts.Callback) == "function" then Callback = Opts.Callback end
	local ButtonFrames = {
		{Inner:FindFirstChild("Frame_6"), Opts.Button1, 2},
		{Inner:FindFirstChild("Frame_9"), Opts.Button2, 48},
		{Inner:FindFirstChild("Frame_12"), Opts.Button3, 94},
		{Inner:FindFirstChild("Frame_15"), Opts.Button4, 140},
	}
	local ActiveButtons = {}
	for i, v in next, ButtonFrames, nil do
		v[1].Visible = false
		if type(v[2]) == "string" then
			table.insert(ActiveButtons, v)
		end
	end
	Inner:FindFirstChild("Text").Size = UDim2.new(0, 180, 0, #ActiveButtons > 0 and 54 or 76)
	for i, v in next, ActiveButtons, nil do
		v[1].Visible = true
		v[1].Position = UDim2.new(0, v[3], 0, 66)
		if i == #ActiveButtons then
			v[1].Size = UDim2.new(0, 184 - v[3], 0, 14)
		else
			v[1].Size = UDim2.new(0, 44, 0, 14)
		end
		local BtnText = v[2]
		v[1]:FindFirstChildOfClass("TextButton").Text = BtnText
		v[1]:FindFirstChildOfClass("TextButton").MouseButton1Click:Connect(function()
			if Callback then Callback(BtnText) end
			Dismiss(Holder, Inner)
		end)
	end
	task.spawn(function()
		local Tween = GetService.TweenService:Create(Bar, TweenInfo.new(Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 0, 0, 2)
		})
		Tween:Play()
		Tween.Completed:Wait()
		if Holder.Parent then
			Dismiss(Holder, Inner)
		end
	end)
end)

local Players=game:GetService("Players")
local PPS=game:GetService("ProximityPromptService")
local Tween=game:GetService("TweenService")
local T=require(game:GetService("ReplicatedStorage"):WaitForChild("BrickTheme"))
local playerGui=Players.LocalPlayer:WaitForChild("PlayerGui")
local active={}
local function customize(x)
 if x:IsA("ProximityPrompt") then x.Style=Enum.ProximityPromptStyle.Custom end
end
for _,x in workspace:GetDescendants() do customize(x) end
workspace.DescendantAdded:Connect(customize)
local function clear(prompt)
 local state=active[prompt] if not state then return end
 if state.tween then state.tween:Cancel() end
 for _,c in state.connections do c:Disconnect() end
 state.gui:Destroy() active[prompt]=nil
end
PPS.PromptShown:Connect(function(prompt,inputType)
 clear(prompt)
 local adornee=prompt.Parent
 if adornee:IsA("Model") then adornee=adornee.PrimaryPart or adornee:FindFirstChildWhichIsA("BasePart") end
 if not adornee then return end
 local gui=T.New("BillboardGui",{Name="BrickPrompt",Adornee=adornee,Size=UDim2.fromOffset(270,76),StudsOffset=Vector3.new(0,2.5,0),AlwaysOnTop=true,Active=true,MaxDistance=prompt.MaxActivationDistance+5},playerGui)
 local card=T.New("TextButton",{Name="Interact",Text="",Size=UDim2.new(1,-8,1,-8),Position=UDim2.fromOffset(4,4)},gui)
 T.Surface(card,T.C.Gold,false)
 local key=inputType==Enum.ProximityPromptInputType.Touch and "TOQUE" or inputType==Enum.ProximityPromptInputType.Gamepad and prompt.GamepadKeyCode.Name:gsub("Button","") or prompt.KeyboardKeyCode.Name
 local keyLabel=T.Label(card,"Key",key,22,UDim2.fromOffset(7,8),UDim2.fromOffset(62,44),Enum.TextXAlignment.Center)
 T.Surface(keyLabel,T.C.Lime,false)
 T.Label(card,"Action",prompt.ActionText,20,UDim2.fromOffset(79,8),UDim2.new(1,-86,0,27))
 T.Label(card,"Object",prompt.ObjectText,13,UDim2.fromOffset(79,35),UDim2.new(1,-86,0,23))
 local progress=T.New("Frame",{Name="HoldProgress",Position=UDim2.new(0,3,1,-5),Size=UDim2.new(0,0,0,3),BackgroundColor3=T.C.White,BorderSizePixel=0,ZIndex=5},card)
 local state={gui=gui,connections={}} active[prompt]=state
 local function connect(signal,fn) table.insert(state.connections,signal:Connect(fn)) end
 connect(card.MouseButton1Down,function() prompt:InputHoldBegin() end)
 connect(card.MouseButton1Up,function() prompt:InputHoldEnd() end)
 connect(card.MouseLeave,function() prompt:InputHoldEnd() end)
 connect(prompt.PromptButtonHoldBegan,function()
  if state.tween then state.tween:Cancel() end
  state.tween=Tween:Create(progress,TweenInfo.new(prompt.HoldDuration,Enum.EasingStyle.Linear),{Size=UDim2.new(1,-6,0,3)}) state.tween:Play()
 end)
 connect(prompt.PromptButtonHoldEnded,function()
  if state.tween then state.tween:Cancel() end progress.Size=UDim2.new(0,0,0,3)
 end)
 connect(prompt.Destroying,function() clear(prompt) end)
end)
PPS.PromptHidden:Connect(clear)

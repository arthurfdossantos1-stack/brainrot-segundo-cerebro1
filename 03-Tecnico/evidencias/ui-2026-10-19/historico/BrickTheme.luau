-- Shared visual language: saturated studded panels, ink outlines and raised buttons.
local T = {}
local Tween = game:GetService("TweenService")
T.C = {Ink=Color3.fromRGB(0,0,0), Navy=Color3.fromRGB(14,25,29), White=Color3.new(1,1,1),
 Gold=Color3.fromRGB(255,215,31), Lime=Color3.fromRGB(118,245,18), Cyan=Color3.fromRGB(20,205,248),
 Purple=Color3.fromRGB(183,100,255), Red=Color3.fromRGB(255,71,65), Orange=Color3.fromRGB(255,161,30)}
function T.New(class, props, parent)
 local x=Instance.new(class)
 for k,v in pairs(props or {}) do x[k]=v end
 x.Parent=parent
 return x
end
function T.Corner(x,r)
 for _,c in x:GetChildren() do if c:IsA("UICorner") then c:Destroy() end end
end
function T.Outline(x,n,color)
 local s=x:FindFirstChild("BrickOutline") or T.New("UIStroke",{Name="BrickOutline"},x)
 s.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
 s.Color=color or T.C.Ink s.Thickness=n or 2 s.Transparency=0 s.LineJoinMode=Enum.LineJoinMode.Miter
 return s
end
function T.Text(x,size)
 x.Font=Enum.Font.GothamBlack x.TextSize=size or x.TextSize x.TextColor3=T.C.White
 x.TextStrokeTransparency=1
 local s=x:FindFirstChild("BrickTextStroke") or T.New("UIStroke",{Name="BrickTextStroke"},x)
 s.ApplyStrokeMode=Enum.ApplyStrokeMode.Contextual s.Color=T.C.Ink s.LineJoinMode=Enum.LineJoinMode.Round
 s.Thickness=(size or x.TextSize)>=24 and 2.6 or 1.5
 x.ZIndex=math.max(x.ZIndex,4)
 if x:FindFirstChild("BrickDetail") and not x:IsA("TextBox") then
  local face=x:FindFirstChild("FaceText")
  if not face then
   face=T.New("TextLabel",{Name="FaceText",Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ZIndex=8},x)
   local function sync()
    face.Text=x.Text face.Font=x.Font face.TextSize=x.TextSize
    face.TextColor3=x.TextColor3 face.TextScaled=x.TextScaled face.TextWrapped=x.TextWrapped
    face.TextXAlignment=x.TextXAlignment face.TextYAlignment=x.TextYAlignment
    face.RichText=x.RichText
   end
   for _,key in {"Text","Font","TextSize","TextColor3","TextScaled","TextWrapped","TextXAlignment","TextYAlignment","RichText"} do x:GetPropertyChangedSignal(key):Connect(sync) end
   sync()
  end
  T.Text(face,size or x.TextSize)
  x.TextTransparency=1 s.Transparency=1
 else
  x.TextTransparency=0 s.Transparency=0
 end
 return x
end
function T.Label(parent,name,text,size,pos,sz,align)
 return T.Text(T.New("TextLabel",{Name=name,Text=text,BackgroundTransparency=1,Position=pos,Size=sz,
 TextXAlignment=align or Enum.TextXAlignment.Left,BorderSizePixel=0},parent),size)
end
-- The native Roblox stud atlas, cropped to its first 2x2 stud patch.
-- It is repeated as image tiles because ImageRectSize overrides ScaleType.Tile.
T.StudTexture="rbxasset://textures/studs.dds"
T.StudPitch=20
function T.Surface(x,color,pattern)
 x.BackgroundColor3=T.C.White x.BackgroundTransparency=0 x.BorderSizePixel=0
 x:SetAttribute("StudColor",color)
 if pattern~=nil then x:SetAttribute("StudPattern",pattern) end
 T.Corner(x) T.Outline(x,2)
 local g=x:FindFirstChildOfClass("UIGradient") or T.New("UIGradient",{},x)
 local top=color:Lerp(T.C.White,.4)
 local bottom=color:Lerp(Color3.new(0,0,0),.3)
 if color==T.C.Gold then top=Color3.fromRGB(255,251,90) bottom=Color3.fromRGB(255,164,0)
 elseif color==T.C.Lime then top=Color3.fromRGB(210,255,84) bottom=Color3.fromRGB(37,191,0)
 elseif color==T.C.Cyan then top=Color3.fromRGB(95,245,255) bottom=Color3.fromRGB(0,105,207) end
 g.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,top),ColorSequenceKeypoint.new(.42,color),ColorSequenceKeypoint.new(1,bottom)})
 g.Rotation=90
 local old=x:FindFirstChild("BrickDetail")
 if old and old:GetAttribute("NativeStuds")~=true then old:Destroy() old=nil end
 local detail=old
 if not detail then
  detail=T.New("Frame",{Name="BrickDetail",Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ClipsDescendants=true,Active=false,ZIndex=1},x)
  detail:SetAttribute("NativeStuds",true)
  local tiles=T.New("Frame",{Name="NativeStudTiles",Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ZIndex=1},detail)
  T.New("Frame",{Name="BottomBevel",Size=UDim2.new(1,0,0,7),Position=UDim2.new(0,0,1,-7),BackgroundColor3=T.C.Ink,BackgroundTransparency=.5,BorderSizePixel=0,ZIndex=2},detail)
  T.New("Frame",{Name="TopLight",Size=UDim2.new(1,-6,0,2),Position=UDim2.fromOffset(3,2),BackgroundColor3=T.C.White,BackgroundTransparency=.06,BorderSizePixel=0,ZIndex=2},detail)
  local inner=T.New("Frame",{Name="InnerRim",Position=UDim2.fromOffset(3,3),Size=UDim2.new(1,-6,1,-10),BackgroundTransparency=1,ZIndex=2},detail)
  T.Outline(inner,1,T.C.White).Transparency=.12
  local sheen=T.New("Frame",{Name="Sheen",Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ClipsDescendants=true,ZIndex=2},detail)
  for i,p in {-.18,.73} do
   T.New("Frame",{Name="Diagonal"..i,Size=UDim2.new(.12,0,3,0),Position=UDim2.new(p,0,-1,0),Rotation=34,BackgroundColor3=T.C.White,BackgroundTransparency=.82,BorderSizePixel=0,ZIndex=2},sheen)
  end
  local lastColumns,lastRows=0,0
  local function paint()
   if not detail.Parent then return end
   local enabled=x:GetAttribute("StudPattern")==true
   tiles.Visible=enabled sheen.Visible=enabled and x.AbsoluteSize.Y>80
   if not enabled then return end
   local pitch=T.StudPitch*2
   local sc=x:FindFirstChildOfClass("UIScale")
   local scale=sc and sc.Scale or 1
   local w,h=x.AbsoluteSize.X/math.max(scale,.01),x.AbsoluteSize.Y/math.max(scale,.01)
   -- AbsoluteSize includes ancestor scaling; measure local size for constant density.
   local ancestor=x.Parent
   while ancestor and ancestor:IsA("GuiBase2d") do
    local s=ancestor:FindFirstChildOfClass("UIScale") if s then w/=math.max(s.Scale,.01) h/=math.max(s.Scale,.01) end
    ancestor=ancestor.Parent
   end
   local cols,rows=math.ceil(w/pitch),math.ceil(h/pitch)
   if cols<=0 or rows<=0 then return end
   if cols~=lastColumns or rows~=lastRows then
    tiles:ClearAllChildren() lastColumns,lastRows=cols,rows
    for row=0,rows-1 do for col=0,cols-1 do
     T.New("ImageLabel",{Name="OriginalStuds",Image=T.StudTexture,ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(64,64),
      Size=UDim2.fromOffset(pitch,pitch),Position=UDim2.fromOffset(col*pitch,row*pitch),BackgroundTransparency=1,
      ImageTransparency=.6,ImageColor3=x:GetAttribute("StudColor"):Lerp(T.C.White,.15),BorderSizePixel=0,ZIndex=1},tiles)
    end end
   end
   for _,tile in tiles:GetChildren() do tile.ImageColor3=x:GetAttribute("StudColor"):Lerp(T.C.White,.15) end
  end
  local queued=false
  local function queue() if queued then return end queued=true task.defer(function() queued=false paint() end) end
  x:GetPropertyChangedSignal("AbsoluteSize"):Connect(queue)
  x:GetAttributeChangedSignal("StudColor"):Connect(queue)
  x:GetAttributeChangedSignal("StudPattern"):Connect(queue)
  task.defer(paint)
 end
end
function T.Button(x,color,size)
 T.Surface(x,color or T.C.Lime,true) T.Text(x,size or 20)
 x.AutoButtonColor=false
 if not x:GetAttribute("BrickHover") then
  x:SetAttribute("BrickHover",true)
  local scale=T.New("UIScale",{Name="HoverScale",Scale=1},x)
  local function bounce(n) Tween:Create(scale,TweenInfo.new(.12,Enum.EasingStyle.Quad),{Scale=n}):Play() end
  x.MouseEnter:Connect(function() bounce(1.035) end)
  x.MouseLeave:Connect(function() bounce(1) end)
  x.MouseButton1Down:Connect(function() bounce(.96) end)
  x.MouseButton1Up:Connect(function() bounce(1) end)
 end
 return x
end
function T.Input(x)
 T.Surface(x,T.C.Cyan,false) T.Text(x,16)
 local grad=x:FindFirstChildOfClass("UIGradient") if grad then grad:Destroy() end x.BackgroundColor3=T.C.Navy
 x.PlaceholderColor3=Color3.fromRGB(222,249,255)
 T.New("UIPadding",{PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10)},x)
end
function T.Icon(parent,kind,pos,size,color)
 local holder=T.New("Frame",{Name="Icon_"..kind,Position=pos,Size=UDim2.fromOffset(size,size),BackgroundTransparency=1,ZIndex=4},parent)
 local canvas=T.New("Frame",{Size=UDim2.fromOffset(100,100),BackgroundTransparency=1},holder)
 T.New("UIScale",{Scale=size/100},canvas)
 local function shape(name,x,y,w,h,c,rot,round)
  local f=T.New("Frame",{Name=name,Position=UDim2.fromOffset(x,y),Size=UDim2.fromOffset(w,h),BackgroundColor3=c,Rotation=rot or 0,BorderSizePixel=0,ZIndex=4},canvas)
  if round then T.New("UICorner",{CornerRadius=UDim.new(0,round)},f) end T.Outline(f,3)
  return f
 end
 color=color or T.C.Cyan
 if kind=="axe" then
  shape("Handle",45,24,14,67,Color3.fromRGB(173,91,36),32)
  shape("Blade",26,12,57,33,color,32)
  shape("Edge",25,10,15,34,T.C.White,32)
 elseif kind=="wood" then
  shape("LogBack",19,13,64,25,Color3.fromRGB(157,79,27),-25,12)
  shape("Log",14,43,70,30,Color3.fromRGB(194,108,32),-25,12)
  shape("End",11,54,26,29,Color3.fromRGB(255,207,108),-25,14)
  shape("Ring",19,62,10,12,Color3.fromRGB(219,145,53),-25,6)
 elseif kind=="coin" then
  shape("Coin",17,12,67,75,T.C.Gold,0,40)
  local label=T.Label(canvas,"Dollar","$",49,UDim2.fromOffset(17,14),UDim2.fromOffset(67,65),Enum.TextXAlignment.Center)
  label.TextColor3=Color3.fromRGB(255,248,183)
 elseif kind=="shop" then
  shape("Handle",30,11,40,38,T.C.Cyan,-12,8)
  shape("Basket",12,34,77,50,Color3.fromRGB(255,67,105),-12,7)
  shape("Stripe",21,49,58,10,Color3.fromRGB(194,29,73),-12,2)
 elseif kind=="brain" then
  shape("LeftFoot",22,74,23,14,T.C.Ink,-10)
  shape("RightFoot",58,74,23,14,T.C.Ink,10)
  shape("Body",13,22,74,56,color,0,17)
  shape("EarL",7,13,21,27,color,-20,7)
  shape("EarR",72,13,21,27,color,20,7)
  shape("EyeL",27,39,16,21,T.C.White,0,7)
  shape("EyeR",58,39,16,21,T.C.White,0,7)
  shape("PupilL",33,46,7,11,T.C.Ink,0,3)
  shape("PupilR",64,46,7,11,T.C.Ink,0,3)
  shape("Smile",44,66,13,4,T.C.Ink,0,2)
 else
  T.Label(canvas,"Symbol",kind=="crown" and "★" or "!",68,UDim2.fromOffset(0,0),UDim2.fromOffset(100,100),Enum.TextXAlignment.Center)
 end
 return holder
end
local windows={}
function T.Fit(panel,w,h)
 panel.AnchorPoint=Vector2.new(.5,.5) panel.Position=UDim2.fromScale(.5,.5)
 local scale=panel:FindFirstChild("WindowScale") or T.New("UIScale",{Name="WindowScale"},panel)
 local function resize()
  local cam=workspace.CurrentCamera if not cam then return end
  local v=cam.ViewportSize
  local width=math.clamp(v.X-28,340,w)
  panel.Size=UDim2.fromOffset(width,h)
  local extra=panel:GetAttribute("ExtraFootHeight") or 0
  scale.Scale=math.min(1,(v.Y-70)/(h+extra),(v.X-24)/width)
  panel.Position=UDim2.new(.5,0,.5,-extra*scale.Scale/2)
 end
 resize()
 panel:GetAttributeChangedSignal("ExtraFootHeight"):Connect(resize)
 if workspace.CurrentCamera then workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(resize) end
end
function T.Modal(gui,panel)
 panel.ZIndex=5
 local overlay=T.New("TextButton",{Name="ModalShade",Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.fromRGB(0,13,23),BackgroundTransparency=.65,Text="",AutoButtonColor=false,Visible=panel.Visible,ZIndex=3},gui)
 local function sync()
  overlay.Visible=panel.Visible
  if panel.Visible then for _,other in windows do if other~=panel and other.Parent then other.Visible=false end end end
 end
 panel:GetPropertyChangedSignal("Visible"):Connect(sync)
 overlay.Activated:Connect(function() panel.Visible=false end)
 table.insert(windows,panel)
 return overlay
end
function T.Window(gui,name,title,icon,w,h)
 local panel=T.New("Frame",{Name=name,Size=UDim2.fromOffset(w,h),BackgroundColor3=T.C.Navy,BorderSizePixel=0,Visible=false},gui)
 T.Corner(panel) T.Outline(panel,2) T.Fit(panel,w,h) T.Modal(gui,panel)
 local header=T.New("Frame",{Name="Header",Size=UDim2.new(1,0,0,66)},panel)
 T.Surface(header,T.C.Gold,true)
 T.Icon(header,icon,UDim2.fromOffset(9,7),50)
 T.Label(header,"Title",title,32,UDim2.fromOffset(68,7),UDim2.new(1,-128,0,50))
 local close=T.Button(T.New("TextButton",{Name="Close",Text="X",Size=UDim2.fromOffset(40,40),Position=UDim2.new(1,-52,0,12)},header),T.C.Red,27)
 close.Activated:Connect(function() panel.Visible=false end)
 return panel,header
end
function T.Nav(gui,name,label,kind,color,slot)
 local button=T.Button(T.New("TextButton",{Name=name,Text="",Size=UDim2.fromOffset(120,52),Position=UDim2.new(0,16,.5,slot*62-40),ZIndex=2},gui),color,20)
 T.Icon(button,kind,UDim2.fromOffset(2,2),46,color)
 T.Label(button,"Caption",label,18,UDim2.fromOffset(48,1),UDim2.new(1,-50,1,-3),Enum.TextXAlignment.Center)
 return button
end
function T.Toast(gui,message,color)
 local toast=T.New("Frame",{Name="Toast",Size=UDim2.new(.8,0,0,58),AnchorPoint=Vector2.new(.5,0),Position=UDim2.new(.5,0,0,10),ZIndex=25},gui)
 T.New("UISizeConstraint",{MaxSize=Vector2.new(600,70)},toast)
 T.Surface(toast,color or T.C.Lime,false)
 local label=T.Label(toast,"Message",message,19,UDim2.fromOffset(12,5),UDim2.new(1,-24,1,-10),Enum.TextXAlignment.Center)
 label.TextWrapped=true
 task.delay(3.5,function() if toast.Parent then toast:Destroy() end end)
end
function T.StyleTree(root)
 for _,x in root:GetDescendants() do
  if x:IsA("UIStroke") and not x.Name:match("^Brick") then x:Destroy() elseif x:IsA("UICorner") then x:Destroy() end
 end
 for _,x in root:GetDescendants() do
  if not x:FindFirstAncestor("BrickDetail") and not x.Name:match("^Brick") then
   if x:IsA("TextButton") then
    local danger=x.Text=="X" or x.Text=="×" or x.Text=="✕" or x.Text:find("Banir") or x.Text=="Matar" or x.Text=="Expulsar"
    T.Button(x,danger and T.C.Red or T.C.Cyan,math.max(x.TextSize,15))
   elseif x:IsA("TextBox") then T.Input(x)
   elseif x:IsA("TextLabel") then
    if x.BackgroundTransparency<1 then T.Surface(x,T.C.Purple,false) end
    T.Text(x,math.max(x.TextSize,14))
   elseif x:IsA("Frame") and x.BackgroundTransparency<1 then
    T.Surface(x,T.C.Navy,false)
   elseif x:IsA("ScrollingFrame") then x.ScrollBarImageColor3=T.C.Gold x.ScrollBarThickness=6 end
  end
 end
end
return T
local Players=game:GetService("Players")
local T=require(game:GetService("ReplicatedStorage"):WaitForChild("BrickTheme"))
local player=Players.LocalPlayer
local gui=script.Parent
gui.ResetOnSpawn=false gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
local entries={{"DinheiroFrame","DinheiroTexto","Dinheiro","coin",T.C.Lime,"DINHEIRO"},{"TroncoFrame","TroncoTexto","Tronco","wood",T.C.Gold,"TRONCOS"}}
local function format(n)
 if n>=1000000 then return string.format("%.1fM",n/1000000) end
 if n>=10000 then return string.format("%.1fK",n/1000) end
 return tostring(n)
end
for i,entry in entries do
 local frame=gui:WaitForChild(entry[1])
 frame.Size=UDim2.fromOffset(204,62) frame.Position=UDim2.fromOffset(16,18+(i-1)*74)
 T.Surface(frame,entry[5],true)
 for _,name in {"Icon","Icon_"..entry[4],"Caption"} do local old=frame:FindFirstChild(name) if old then old:Destroy() end end
 T.Icon(frame,entry[4],UDim2.fromOffset(0,3),56)
 T.Label(frame,"Caption",entry[6],14,UDim2.fromOffset(62,5),UDim2.new(1,-69,0,21))
 local value=frame:WaitForChild(entry[2])
 value.BackgroundTransparency=1 value.Position=UDim2.fromOffset(62,23) value.Size=UDim2.new(1,-69,0,33)
 value.TextXAlignment=Enum.TextXAlignment.Left T.Text(value,27)
 task.spawn(function()
  local stats=player:WaitForChild("leaderstats") local stat=stats:WaitForChild(entry[3])
  local function update() value.Text=(entry[3]=="Dinheiro" and "$" or "")..format(stat.Value) end
  stat.Changed:Connect(update) update()
 end)
end
local function resize()
 local camera=workspace.CurrentCamera if not camera then return end
 local scale=camera.ViewportSize.X<520 and .78 or 1
 for _,entry in entries do
  local f=gui:FindFirstChild(entry[1])
  local s=f:FindFirstChild("HudScale") or T.New("UIScale",{Name="HudScale"},f) s.Scale=scale
 end
end
resize() if workspace.CurrentCamera then workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(resize) end
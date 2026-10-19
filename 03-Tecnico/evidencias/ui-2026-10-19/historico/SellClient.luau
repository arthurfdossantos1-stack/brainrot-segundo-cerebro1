local Players=game:GetService("Players")
local RS=game:GetService("ReplicatedStorage")
local UIS=game:GetService("UserInputService")
local T=require(RS:WaitForChild("BrickTheme"))
local player=Players.LocalPlayer
local remote=RS:WaitForChild("SellEvent")
local gui=T.New("ScreenGui",{Name="SellPanelGui",ResetOnSpawn=false,DisplayOrder=21,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},player:WaitForChild("PlayerGui"))
local panel=T.Window(gui,"Panel","VENDER TRONCOS","wood",590,520)
local top=T.New("Frame",{Name="Summary",Position=UDim2.fromOffset(14,80),Size=UDim2.new(1,-28,0,125)},panel)
T.Surface(top,T.C.Cyan,true)
T.Icon(top,"wood",UDim2.fromOffset(6,12),94)
T.Label(top,"AvailableLabel","SEUS TRONCOS",20,UDim2.fromOffset(116,12),UDim2.new(1,-132,0,27))
local available=T.Label(top,"Available","0",38,UDim2.fromOffset(116,40),UDim2.new(1,-132,0,46))
local priceLabel=T.Label(top,"Price","$25 POR TRONCO",16,UDim2.fromOffset(116,87),UDim2.new(1,-132,0,25))
local quantity=T.New("Frame",{Name="QuantityCard",Position=UDim2.fromOffset(14,219),Size=UDim2.new(1,-28,0,130)},panel)
T.Surface(quantity,T.C.Gold,true)
T.Label(quantity,"Caption","QUANTOS VOCÊ QUER VENDER?",18,UDim2.fromOffset(10,8),UDim2.new(1,-20,0,27),Enum.TextXAlignment.Center)
local qty=T.Label(quantity,"Quantity","0",31,UDim2.fromOffset(10,36),UDim2.new(1,-20,0,37),Enum.TextXAlignment.Center)
local controls=T.New("Frame",{Name="Controls",Position=UDim2.fromOffset(10,79),Size=UDim2.new(1,-20,0,38),BackgroundTransparency=1},quantity)
T.New("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.LayoutOrder},controls)
local result=T.New("Frame",{Name="TotalCard",Position=UDim2.fromOffset(14,363),Size=UDim2.new(1,-28,0,60)},panel)
T.Surface(result,T.C.Lime,true)
local total=T.Label(result,"Total","VOCÊ RECEBE: $0",25,UDim2.fromOffset(12,5),UDim2.new(1,-24,1,-10),Enum.TextXAlignment.Center)
local sell=T.Button(T.New("TextButton",{Name="Sell",Text="VENDER AGORA",Position=UDim2.fromOffset(14,439),Size=UDim2.new(1,-28,0,62)},panel),T.C.Lime,28)
local current,max,price,selling=0,0,25,false
local request=0
local function update()
 current=math.clamp(current,0,max)
 qty.Text=tostring(current) available.Text=tostring(max)
 total.Text="VOCÊ RECEBE: $"..tostring(current*price)
 priceLabel.Text="$"..price.." POR TRONCO"
 sell.Text=selling and "VENDENDO..." or "VENDER AGORA"
end
for i,entry in {{"-10",-10},{"-1",-1},{"+1",1},{"+10",10},{"MAX","max"}} do
 local b=T.Button(T.New("TextButton",{Name="Qty"..i,Text=entry[1],LayoutOrder=i,Size=UDim2.new(.2,-6,1,0)},controls),entry[2]=="max" and T.C.Lime or T.C.Cyan,19)
 b.Activated:Connect(function() if selling then return end current=entry[2]=="max" and max or math.clamp(current+entry[2],0,max) update() end)
end
sell.Activated:Connect(function()
 if selling then return end
 if current<=0 then T.Toast(gui,"Selecione troncos para vender!",T.C.Orange) return end
 selling=true request+=1 local id=request update()
 remote:FireServer("Sell",{quantidade=current})
 task.delay(6,function() if selling and request==id then selling=false update() T.Toast(gui,"Sem resposta. Confira seu saldo antes de tentar novamente.",T.C.Orange) end end)
end)
remote.OnClientEvent:Connect(function(action,data)
 if action=="AbrirPainel" then
  local stats=player:FindFirstChild("leaderstats")
  local logs=stats and stats:FindFirstChild("Tronco")
  max=logs and logs.Value or 0 current=max panel.Visible=true update()
  remote:FireServer("GetInfo")
 elseif action=="Resultado" and data then
  selling=false max=data.troncoRestante or max current=0 update()
  T.Toast(gui,"VENDIDO! +$"..tostring(data.total).." • "..tostring(data.quantidade).." troncos",T.C.Lime)
 elseif action=="SemTroncos" then selling=false update() T.Toast(gui,"Você não tem troncos para vender!",T.C.Orange)
 elseif action=="Info" and data and data.precoUnitario then price=data.precoUnitario update() end
end)
UIS.InputBegan:Connect(function(input,processed) if not processed and input.KeyCode==Enum.KeyCode.Escape then panel.Visible=false end end)
task.spawn(function()
 local stats=player:WaitForChild("leaderstats") local logs=stats:WaitForChild("Tronco")
 local function sync() max=logs.Value update() end
 logs.Changed:Connect(sync) sync()
end)
-- Reference-style shop. Server remains authoritative for catalog, ownership and purchases.
local Players=game:GetService("Players")
local RS=game:GetService("ReplicatedStorage")
local T=require(RS:WaitForChild("BrickTheme"))
local player=Players.LocalPlayer
local remotes=RS:WaitForChild("ShopRemotes")
local getShop=remotes:WaitForChild("GetShop")
local buyItem=remotes:WaitForChild("BuyItem")
local gui=T.New("ScreenGui",{Name="BrainrotShop",ResetOnSpawn=false,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=20},player:WaitForChild("PlayerGui"))
local open=T.Nav(gui,"OpenShop","LOJA","shop",T.C.Gold,0)
local main=T.Window(gui,"ShopPanel","Loja","shop",654,530)
main:SetAttribute("ExtraFootHeight",58)
local balance=T.Label(main.Header,"Balance","MADEIRA  0",15,UDim2.new(1,-195,0,20),UDim2.fromOffset(130,28),Enum.TextXAlignment.Right)
balance.TextColor3=T.C.White
local status=T.Label(main,"Status","Melhore seu machado. Complete sua coleção!",14,UDim2.fromOffset(16,112),UDim2.new(1,-32,0,24))
status.TextWrapped=true status.Visible=false
local tabs=T.New("Frame",{Name="Categories",Size=UDim2.new(1,0,0,38),Position=UDim2.new(0,0,1,14),BackgroundTransparency=1},main)
T.New("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},tabs)
local list=T.New("ScrollingFrame",{Name="Items",Size=UDim2.new(1,-20,1,-83),Position=UDim2.fromOffset(10,78),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=6,ScrollBarImageColor3=T.C.Gold,CanvasSize=UDim2.new(),AutomaticCanvasSize=Enum.AutomaticSize.Y},main)
T.New("UIPadding",{PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,12),PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0,8)},list)
T.New("UIListLayout",{Padding=UDim.new(0,12),SortOrder=Enum.SortOrder.LayoutOrder},list)
local category="Todos"
local data={items={},wood=0,power=1,owned={}}
local tabButtons={}
local render,refresh
local busy=false
local colors={axe2=T.C.Lime,axe3=T.C.Cyan,axe4=T.C.Gold,brainrot1=T.C.Cyan,brainrot2=T.C.Purple,brainrot3=T.C.Gold}
local function owned(item)
 return item.power and item.power<=(data.power or 1)
end
render=function()
 for _,child in list:GetChildren() do if child:IsA("Frame") then child:Destroy() end end
 for index,item in ipairs(data.items or {}) do
  if category=="Todos" or category==item.category then
   local color=colors[item.id] or T.C.Cyan
   local card=T.New("Frame",{Name=item.id,LayoutOrder=index,Size=UDim2.new(1,0,0,176)},list)
   T.Surface(card,color,true)
   local itemIcon=T.Icon(card,item.category=="Machados" and "axe" or "brain",UDim2.fromOffset(2,13),142,color)
   local name=T.Label(card,"ItemName",item.name,30,UDim2.fromOffset(160,12),UDim2.new(1,-176,0,58))
   name.TextWrapped=true name.TextYAlignment=Enum.TextYAlignment.Top
   T.New("UITextSizeConstraint",{MinTextSize=19,MaxTextSize=30},name) name.TextScaled=true
   local desc=T.Label(card,"Description",item.description or "",14,UDim2.fromOffset(160,72),UDim2.new(1,-176,0,36))
   desc.TextWrapped=true desc.TextYAlignment=Enum.TextYAlignment.Top
   local badge=item.power and ("FORÇA x"..item.power) or ((data.owned or {})[item.brainrot] and ("POSSUI: "..data.owned[item.brainrot]) or "COLECIONE!")
   local badgeLabel=T.Label(card,"Badge",badge,12,UDim2.fromOffset(5,147),UDim2.fromOffset(140,20),Enum.TextXAlignment.Center)
   local buy=T.Button(T.New("TextButton",{Name="Buy",Size=UDim2.fromOffset(164,46),Position=UDim2.new(1,-176,1,-57),Text=owned(item) and "ADQUIRIDO ✓" or (""..item.price)},card),owned(item) and T.C.Cyan or T.C.Lime,24)
   T.Icon(buy,"wood",UDim2.fromOffset(6,7),30)
   local function fitCard()
    local narrow=main.Size.X.Offset<500
    itemIcon.Size=UDim2.fromOffset(narrow and 96 or 142,narrow and 96 or 142)
    itemIcon.Position=UDim2.fromOffset(2,narrow and 36 or 13)
    itemIcon.Frame.UIScale.Scale=narrow and .96 or 1.42
    local left=narrow and 110 or 160
    name.Position=UDim2.fromOffset(left,12) name.Size=UDim2.new(1,-left-16,0,58)
    desc.Position=UDim2.fromOffset(left,72) desc.Size=UDim2.new(1,-left-16,0,36)
    badgeLabel.Size=UDim2.fromOffset(narrow and 100 or 140,20)
    buy.Size=UDim2.fromOffset(narrow and 148 or 164,46)
    buy.Position=UDim2.new(1,narrow and -160 or -176,1,-57)
   end
   fitCard()
   local resizeConnection=main:GetPropertyChangedSignal("Size"):Connect(fitCard)
   card.Destroying:Connect(function() resizeConnection:Disconnect() end)
   buy.Activated:Connect(function()
    if busy or owned(item) then return end
    busy=true buy.Text="AGUARDE..." buy.Active=false
    local ok,success,message=pcall(function() return buyItem:InvokeServer(item.id) end)
    status.Text=ok and (message or "Compra processada.") or "Não foi possível comprar. Tente novamente."
    T.Toast(gui,status.Text,ok and success and T.C.Lime or T.C.Orange)
    refresh()
    busy=false
   end)
  end
 end
end
for i,name in {"Todos","Machados","Brainrots"} do
 local button=T.Button(T.New("TextButton",{Name=name,Text=name,LayoutOrder=i,Size=UDim2.new(1/3,-6,1,0)},tabs),i==1 and T.C.Gold or T.C.Cyan,17)
 tabButtons[name]=button
 button.Activated:Connect(function()
  category=name
  for n,b in pairs(tabButtons) do T.Surface(b,n==name and T.C.Gold or T.C.Cyan,false) end
  list.CanvasPosition=Vector2.zero render()
 end)
end
refresh=function()
 local ok,result=pcall(function() return getShop:InvokeServer() end)
 if ok and type(result)=="table" and type(result.items)=="table" then
  data=result balance.Text="MADEIRA: "..tostring(data.wood or 0) render()
 else
  status.Text="Não foi possível carregar a loja. Abra novamente para tentar." T.Toast(gui,status.Text,T.C.Orange)
  for _,card in list:GetChildren() do
   if card:IsA("Frame") and card:FindFirstChild("Buy") then card.Buy.Active=true card.Buy.Text="TENTAR NOVAMENTE" end
  end
 end
end
open.Activated:Connect(function() main.Visible=not main.Visible if main.Visible then refresh() end end)
task.spawn(function()
 local stats=player:WaitForChild("leaderstats")
 local wood=stats:WaitForChild("Madeira")
 local function update() balance.Text="MADEIRA: "..wood.Value end
 wood.Changed:Connect(update) update()
end)
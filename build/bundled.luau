local a local aa,ab,ac,ad,al,am,an,ao,ap,aq,ar,as,at,au,av,aw,ax,ay,az,aA={function()local m, P, Q=a(1)return(function(...)
local R,S,U,V,W=Q(P.utility.variables),Q(P.utility.image),Q(P.utility.locale),Q(P.utility.constants),Q(P.types)export
type Theme=W.Theme export type Translator=W.Translator export type Translations=W.Translations export type
WindowConfiguration=W.WindowConfiguration export type WindowProps=W.WindowProps export type TabProps=W.TabProps export
type TagProps=W.TagProps export type SectionProps=W.SectionProps export type GroupProps=W.GroupProps export type
ButtonProps=W.ButtonProps export type ToggleProps=W.ToggleProps export type SliderProps=W.SliderProps export type
DropdownProps=W.DropdownProps export type InputProps=W.InputProps export type KeybindProps=W.KeybindProps export type
ColorPickerProps=W.ColorPickerProps export type StatProps=W.StatProps export type NotifyProps=W.NotifyProps export type
ToastProps=W.ToastProps export type PopupBox=W.PopupBox export type PopupOption=W.PopupOption export type PopupProps=W.
PopupProps export type Moveable=W.Moveable export type Window=W.Window export type Tab=W.Tab export type Group=W.Group
export type Button=W.Button export type Toggle=W.Toggle export type Slider=W.Slider export type Dropdown=W.Dropdown
export type Input=W.Input export type Keybind=W.Keybind export type ColorPicker=W.ColorPicker export type Stat=W.Stat
export type Section=W.Section export type Tag=W.Tag export type Popup=W.Popup export type Volcano=W.Volcano type
WindowModule={new:(W.WindowProps)->W.Window}local X={}::Volcano local function l()local Y=Instance.new'ScreenGui'Y.Name=
R.httpService:GenerateGUID(false)Y.ClipToDeviceSafeArea=false Y.DisplayOrder=V.displayOrder.banner Y.IgnoreGuiInset=true
Y.ResetOnSpawn=false Y.Enabled=true Y.SafeAreaCompatibility=Enum.SafeAreaCompatibility.None Y.ScreenInsets=Enum.
ScreenInsets.DeviceSafeInsets Y.ZIndexBehavior=Enum.ZIndexBehavior.Sibling Y.Parent=R.guiContainer local Z=Instance.new
'ImageLabel'Z.Name='Banner'Z.AnchorPoint=Vector2.new(0.5,0.5)Z.BackgroundColor3=Color3.fromRGB(255,255,255)Z.
BackgroundTransparency=1 Z.BorderColor3=Color3.fromRGB(0,0,0)Z.BorderSizePixel=0 Z.Image=S.resolve(V.icons.banner)Z.
Position=UDim2.fromScale(0.5,0.5)Z.Size=UDim2.fromOffset(262,60)Z.Parent=Y return Y end function X.CreateWindow(Y,Z:W.
WindowProps):W.Window local _,aa:W.Window?,ab:(()->())?=(l())if R.secureMode then S.preload(function(ac)if ac<=0 then return
end local function s()if not aa or aa.unloaded then return end aa:Notify{title=U.resolve'Secure mode',content=if ac==1 then
U.resolve"An asset couldn't be cached and won't appear."else U.resolve"Some assets couldn't be cached and won't appear."
}end if aa then s()else ab=s end end)end local ac,ad=pcall(function()return(Q(P.components.window)::WindowModule).new(Z)end)
if not ac then _:Destroy()error(ad,0)end local al=ad::W.Window aa=al if ab then task.spawn(ab)ab=nil end if R.secureMode then
task.spawn(function()local am,an=R.fontManager:loadFont(V.fontAsset,Enum.FontWeight.Medium),R.fontManager:loadFont(V.
fontAsset,Enum.FontWeight.SemiBold)if not al.unloaded and am and an and am~=R.fallbackFont and an~=R.fallbackFont then al:
ChangeTheme{Font=am,TitleFont=an}end end)end task.spawn(function()task.wait(0.5)_:Destroy()task.wait(0.5)if not al.unloaded
then al:Show()end end)return al end return X end)()end,[3]=function()local aa, ab, ac=a(3)return(function(...)local ad={
}ad.__index=ad ad.__type='Action'local al=ab.Parent.Parent.utility local am,an,m=ac(al.variables),ac(al.log),ac(al.HapticEngine)
function ad.new(P,Q)Q=if typeof(Q)=='table'then Q else{}local R=setmetatable({window=assert(P,
'Missing argument #1 (Window expected)'),name=Q.name or Q.Name or'Action',icon=assert(Q.icon or Q.Icon,
'Missing argument (Icon expected)'),callback=assert(Q.callback or Q.Callback,'Missing argument (Function expected)'),
linkedTab=Q.linkedTab or Q.LinkedTab},ad)R.action=R.window:Create('Frame',{Name=R.name,BorderSizePixel=0,LayoutOrder=-(Q.
order or 0),Size=UDim2.fromOffset(24,24),BackgroundTransparency=1,Parent=R.window.actionContainer})R.iconLabel=R.window:
Create('ImageLabel',{Image=R.icon,Size=UDim2.fromOffset(20,20),BorderSizePixel=0,AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.fromScale(0.5,0.5),BackgroundTransparency=1,ImageTransparency=1,Parent=R.action},{ImageColor3=
'ActionColor'})R.interact=R.window:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),
BorderSizePixel=0,Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),TextTransparency=1,Parent=R.action}
)local function n()if not R.window:_settled()then return end if R.linkedTab and R.window.selectedTab==R.linkedTab then
return end if R.isLit and R:isLit()then return end am.tweenService:Create(R.iconLabel,TweenInfo.new(0.25,Enum.EasingStyle
.Quint,Enum.EasingDirection.Out),{ImageTransparency=0.6}):Play()end R.window:Connect(R.interact.MouseButton1Click,
function()m.click()task.spawn(function()local S,U=pcall(R.callback)if not S then an.warn(`Volcano encountered an error, with the callback for a {
R.__type} component named '{R.name}':`)an.print(U)end n()end)end)R.window:Connect(R.interact.MouseEnter,function()if not
R.window:_interactive()then return end am.tweenService:Create(R.iconLabel,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.
EasingDirection.Out),{ImageTransparency=0.2}):Play()end)R.window:Connect(R.interact.MouseLeave,n)return R end return ad
end)()end,[4]=function()local aa, ab, ac=a(4)return(function(...)local ad={}ad.__index=ad ad.__type='Button'local al=ab.
Parent.Parent.utility local am,an,m,P,Q=ac(al.variables),ac(al.functions),ac(al.moveable),ac(al.locale),ac(al.HapticEngine)function
ad.new(R,S)S=if typeof(S)=='table'then S else{}local U=setmetatable({tab=assert(R,'Missing argument #1 (Tab expected)'),
window=R.window,name=S.name or S.Name or'Button',icon=S.icon or S.Icon,description=S.description or S.Description,
compact=R.compact or false,callback=S.callback or S.Callback or function()end},ad)if U.compact then U:_buildCompact()else
U:_buildFull()end if U.description and not U.compact then U.descriptor=ac(ab.Parent.descriptor).new(U.tab,{description=U.
description})end return U end function ad._runCallback(R)R.window:_runGuarded(R,R.callback)end function ad._buildFull(R)R.
main=R.window:Create('Frame',{Size=UDim2.new(1,-20,0,43),BorderSizePixel=0,Name=R.name,BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,Parent=R.tab.tabPage},{BackgroundTransparency='ElementTransparency'})R.stroke=R.
window:StyleElementBody(R.main)R.hoverOverlay=R.window:CreateHoverOverlay(R.main)R.container=R.window:Create('Frame',{
BorderSizePixel=0,Parent=R.main,Size=UDim2.new(0,170,0,16),Position=UDim2.new(0,20,0.5,0),AnchorPoint=Vector2.new(0,0.5)
,BackgroundTransparency=1})R.containerLayout=R.window:Create('UIListLayout',{Padding=UDim.new(0,5),FillDirection=Enum.
FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.
Left,Parent=R.container})if R.icon then R.iconLabel=R.window:Create('ImageLabel',{Image=R.icon,Size=UDim2.fromOffset(16,
16),BorderSizePixel=0,BackgroundTransparency=1,ImageTransparency=1,Parent=R.container},{ImageColor3='ContentColor'})end
R.title=R.window:Create('TextLabel',{Text=P.t(R.name),Size=UDim2.fromOffset(250,16),BorderSizePixel=0,
BackgroundTransparency=1,TextSize=16,AutomaticSize=Enum.AutomaticSize.X,TextXAlignment=Enum.TextXAlignment.Left,
TextWrapped=true,LayoutOrder=1,TextTransparency=1,Parent=R.container},{TextColor3='ContentColor',FontFace='Font'})R.
interact=R.window:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),BorderSizePixel=0,Position=
UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),TextTransparency=1,Parent=R.main})R.window:_wireElementHover(R
)R.window:ConnectFor(R,R.interact.MouseButton1Click,function()Q.click()am.tweenService:Create(R.stroke,TweenInfo.new(0.25
,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Transparency=1}):Play()am.tweenService:Create(R.main,TweenInfo.new(0.6
,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(1,-26,0,43)}):Play()R:_runCallback()task.wait(
0.11)am.tweenService:Create(R.main,TweenInfo.new(0.25,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.
new(1,-20,0,43)}):Play()am.tweenService:Create(R.stroke,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.
Out),{Transparency=R.window.theme.ElementStrokeTransparency}):Play()end)end function ad._buildCompact(R)local S=R.window
R.main,R.stroke,R.interact=S:_buildCompactRow(R.tab,R.name)R.hoverOverlay=R.interact S:Create('UIPadding',{PaddingLeft=
UDim.new(0,16),PaddingRight=UDim.new(0,16),Parent=R.interact})S:Create('UIListLayout',{FillDirection=Enum.FillDirection.
Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Center,Padding=
UDim.new(0,6),Parent=R.interact})if R.icon then R.iconLabel=S:Create('ImageLabel',{Image=R.icon,Size=UDim2.fromOffset(16
,16),BorderSizePixel=0,BackgroundTransparency=1,LayoutOrder=0,ImageTransparency=1,Parent=R.interact},{ImageColor3=
'ContentColor'})end R.title=S:Create('TextLabel',{Text=P.t(R.name),Size=UDim2.fromOffset(0,16),AutomaticSize=Enum.
AutomaticSize.X,BorderSizePixel=0,BackgroundTransparency=1,TextSize=16,TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,LayoutOrder=1,TextTransparency=1,Parent=R.interact},{TextColor3='ContentColor',
FontFace='Font'})S:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Shrink,Parent=R.title})R.window:_wireElementHover(R)R.
window:ConnectFor(R,R.interact.MouseButton1Click,function()Q.click()am.tweenService:Create(R.stroke,TweenInfo.new(0.25,
Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Transparency=1}):Play()R:_runCallback()task.wait(0.11)am.tweenService:
Create(R.stroke,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Transparency=R.window.theme.
ElementStrokeTransparency}):Play()end)end function ad._setShown(R,S,U)if S then R.window:_revealCommon(R,U)else R.window:
_hideCommon(R,U)end end function ad._minWidth(R)local S=32 if R.icon then S+=22 end S+=an.textWidth(R.window.theme.Font,16
,R.name)return S end m(ad)return ad end)()end,[5]=function()local aa, ab, ac=a(5)return(function(...)local ad=ab.Parent.
Parent.utility local al,am,an,m,P,Q=ac(ad.variables),ac(ad.filesystem),ac(ad.constants),ac(ad.locale),ac(ad.HapticEngine),{}function
Q.buildCollapsedFace(R)R.collapsedIcon=R:Create('ImageLabel',{Name='CollapsedIcon',AnchorPoint=Vector2.new(0,0.5),
Position=UDim2.new(0,16,0.5,0),Size=UDim2.fromOffset(24,24),BackgroundTransparency=1,Image=R.showIcon,ZIndex=an.zIndex.
restoreContent,ImageTransparency=1,Parent=R.main},{ImageColor3='TitlingColor'})R:Create('UICorner',{Parent=R.
collapsedIcon},{CornerRadius='PillCornerRadius'})local S=R:Create('Frame',{Name='CollapsedText',AnchorPoint=Vector2.new(
0,0.5),Position=UDim2.new(0,50,0.5,0),Size=UDim2.new(1,-60,0,32),BackgroundTransparency=1,ZIndex=an.zIndex.restoreContent
,Parent=R.main})R:Create('UIListLayout',{Padding=UDim.new(0,1),VerticalAlignment=Enum.VerticalAlignment.Center,SortOrder
=Enum.SortOrder.LayoutOrder,Parent=S})R.collapsedTitle=R:Create('TextLabel',{Name='Title',Text=R.showName,Size=UDim2.
new(1,0,0,16),BackgroundTransparency=1,FontFace=al.brandFont(Enum.FontWeight.Medium),RichText=true,TextSize=16,
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,LayoutOrder=1,ZIndex=an.zIndex.restoreContent,TextTransparency=1
,Parent=S},{TextColor3='TitlingColor'})R.collapsedSubtitle=R:Create('TextLabel',{Name='Subtitle',Text=m.t'Tap to show',
Size=UDim2.new(1,0,0,14),BackgroundTransparency=1,FontFace=al.brandFont(Enum.FontWeight.Medium),TextSize=14,
TextXAlignment=Enum.TextXAlignment.Left,LayoutOrder=2,ZIndex=an.zIndex.restoreContent,TextTransparency=1,Parent=S},{
TextColor3='TitlingColor'})R.collapsedInteract=R:Create('TextButton',{Name='CollapsedInteract',BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),Text='',TextTransparency=1,Visible=false,ZIndex=an.zIndex.restoreInteract,Parent=R.main})R:
Connect(R.collapsedInteract.MouseButton1Click,function()P.click()R:ToggleHide()end)end function Q.isNewUser()local R=al.
localPlayer if not R then return false end if typeof(am.isfile)~='function'or typeof(am.writefile)~='function'then return
true end local S,U,V=al.fileSystemManager:getPath'lastuser.txt',tostring(R.UserId),true pcall(function()if am.isfile(S)
then V=am.readfile(S)~=U end end)pcall(function()am.writefile(S,U)end)return V end function Q.setCollapsedShown(R,S,U)
local V={[R.collapsedIcon]={ImageTransparency=if S then 0 else 1},[R.collapsedTitle]={TextTransparency=if S then 0 else
1},[R.collapsedSubtitle]={TextTransparency=if S then 0.5 else 1}}for W,X in V do if U then al.tweenService:Create(W,U,X):
Play()else for Y,Z in X do W[Y]=Z end end end end return Q end)()end,[6]=function()local aa, ab, ac=a(6)return(
function(...)local ad={}ad.__index=ad ad.__type='ColorPicker'local al=ab.Parent.Parent.utility local am,an,m,P,Q,R,S,U,V,W,X,Y,Z
,_,ao,ap,aq,ar=ac(al.variables),ac(al.functions),ac(al.moveable),ac(al.constants),ac(al.locale),ac(al.HapticEngine),ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(255,0,0)),ColorSequenceKeypoint.new(0.17,Color3.fromRGB(255,255,0)),
ColorSequenceKeypoint.new(0.33,Color3.fromRGB(0,255,0)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(0,255,255)),
ColorSequenceKeypoint.new(0.67,Color3.fromRGB(0,0,255)),ColorSequenceKeypoint.new(0.83,Color3.fromRGB(255,0,255)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(255,0,0))},41,52,Vector2.new(150,120),184,10,214,10,240,62,8,400 local as,at,au,
av,aw,ax,ay,az={wide={height=190,previewPos=UDim2.new(1,-20,0,V+39),previewSize=UDim2.new(1,-(ao+20),0,78),hexPos=UDim2.new(0,
ao,0,V+90),hexSize=UDim2.new(1,-(ao+20+ap+aq),0,30),alphaFieldPos=UDim2.new(1,-(20+ap),0,V+90),alphaFieldSize=UDim2.new(0,ap,0
,30)},narrow={height=296,previewPos=UDim2.new(1,-20,0,V+W.Y+40),previewSize=UDim2.new(1,-40,0,56),hexPos=UDim2.new(0,20,
0,V+W.Y+78),hexSize=UDim2.new(1,-(40+ap+aq),0,30),alphaFieldPos=UDim2.new(1,-(20+ap),0,V+W.Y+78),alphaFieldSize=UDim2.new(0
,ap,0,30)}},UDim2.new(1,-16,0,U/2),UDim2.fromOffset(40,22),TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),TweenInfo.new(0.3,Enum.
EasingStyle.Quint,Enum.EasingDirection.Out),TweenInfo.new(0.12,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
TweenInfo.new(0.2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)local function H(aA)return math.clamp(aA,0,1)end local
function I(aA)return math.clamp(math.round(aA),0,255)end local aA={black=Color3.fromRGB(0,0,0),white=Color3.fromRGB(255,255
,255),red=Color3.fromRGB(255,0,0),green=Color3.fromRGB(0,255,0),blue=Color3.fromRGB(0,0,255),yellow=Color3.fromRGB(255,
255,0),cyan=Color3.fromRGB(0,255,255),magenta=Color3.fromRGB(255,0,255),orange=Color3.fromRGB(255,165,0),purple=Color3.
fromRGB(128,0,128),pink=Color3.fromRGB(255,105,180),brown=Color3.fromRGB(139,69,19),gray=Color3.fromRGB(128,128,128),
grey=Color3.fromRGB(128,128,128)}local function K(aB,aC,aD)if aC<=0 then return Color3.new(aD,aD,aD)end local function O(aE,aF,aG)
aG=aG%1 if aG<0.16666666666666666 then return aE+(aF-aE)*6*aG elseif aG<0.5 then return aF elseif aG<0.6666666666666666 then
return aE+(aF-aE)*(0.6666666666666666-aG)*6 end return aE end local aE=if aD<0.5 then aD*(1+aC)else aD+aC-aD*aC local aF=2*aD-aE return
Color3.new(O(aF,aE,aB+0.3333333333333333),O(aF,aE,aB),O(aF,aE,aB-0.3333333333333333))end local function L(aB)local aC={}for aD in aB:
gmatch'[%d%.]+'do table.insert(aC,tonumber(aD))end return aC end local function M(aB)if typeof(aB)~='string'then return nil
end local aC=(aB:lower():match'^%s*(.-)%s*$')or''if aC==''then return nil end if aA[aC]then return aA[aC]end local aD,aE=aC:match
'^(%a+)',L(aC)if(aD=='hsv'or aD=='hsb')and#aE>=3 then local aF,aG,aH=(aE[1]%360)/360,if aE[2]>1 then aE[2]/100 else aE[2],if aE[3]>1
then aE[3]/100 else aE[3]return Color3.fromHSV(aF,H(aG),H(aH))end if aD=='hsl'and#aE>=3 then local aF,aG,aH=(aE[1]%360)/360,if aE[2]
>1 then aE[2]/100 else aE[2],if aE[3]>1 then aE[3]/100 else aE[3]return K(aF,H(aG),H(aH))end if(aD=='rgb'or aD=='rgba')and#aE>=3
then return Color3.fromRGB(I(aE[1]),I(aE[2]),I(aE[3]))end local aF=aC:match'^#?(%x%x%x%x%x%x)$'or aC:match'^#?(%x%x%x)$'or aC:
match'^0x(%x%x%x%x%x%x)$'if aF then local aG,aH=pcall(Color3.fromHex,aF)if aG then return aH end end if#aE>=3 and not aD then if
aE[1]<=1 and aE[2]<=1 and aE[3]<=1 then return Color3.new(H(aE[1]),H(aE[2]),H(aE[3]))end return Color3.fromRGB(I(aE[1]),I(aE[2])
,I(aE[3]))end return nil end local function N(aB,aC)if typeof(aB)=='Color3'then return aB end if typeof(aB)=='string'then
return M(aB)or aC end return aC end function ad.new(aB,aC)aC=if typeof(aC)=='table'then aC else{}local aD=setmetatable({tab=
assert(aB,'Missing argument #1 (Tab expected)'),window=aB.window,name=aC.name or aC.Name or'Color Picker',icon=aC.icon or aC.
Icon,description=aC.description or aC.Description,forgetState=aC.forgetState or aC.ForgetState or aB.forgetState,callback=aC.
callback or aC.Callback or function()end,_isOpen=false},ad)aD.value=N(aC.color or aC.Color or aC.value or aC.Value or aC.default
,Color3.fromRGB(255,255,255))aD.hue,aD.sat,aD.val=aD.value:ToHSV()local aE=aC.alpha or aC.Alpha aD.alpha=if type(aE)=='number'
then H(aE)else 1 aD.flag=aC.flag or aC.Flag or(not aD.forgetState and an.deriveFlagFromName(aD.name)or nil)aD.window:
_registerControl(aD)aD.main=aD.window:Create('Frame',{Size=UDim2.new(1,-20,0,U),BorderSizePixel=0,Name=aD.name,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,Parent=aD.tab.tabPage},{BackgroundTransparency=
'ElementTransparency'})aD.stroke=aD.window:StyleElementBody(aD.main)aD.hoverOverlay=aD.window:CreateHoverOverlay(aD.main)aD:
_buildHeader()aD:_buildPicker()aD.window:ConnectFor(aD,aD.interact.MouseButton1Click,function()R.click()if aD._isOpen then aD:
_close()else aD:_open()end end)aD.window:ConnectFor(aD,aD.main.MouseEnter,function()if aD._isOpen or not aD.window:
_interactive()then return end local aF=aD.window.theme am.tweenService:Create(aD.stroke,aw,{Transparency=aF.
ElementStrokeHoverTransparency,Color=aF.ElementStrokeHover}):Play()am.tweenService:Create(aD.title,aw,{TextColor3=aF.
ElementTextHoverColor}):Play()am.tweenService:Create(aD.hoverOverlay,aw,{BackgroundTransparency=0.97}):Play()end)aD.window:
ConnectFor(aD,aD.main.MouseLeave,function()local aF=aD.window.theme am.tweenService:Create(aD.stroke,aw,{Transparency=aF.
ElementStrokeTransparency,Color=aF.ElementStroke}):Play()am.tweenService:Create(aD.title,aw,{TextColor3=aF.ContentColor}):
Play()am.tweenService:Create(aD.hoverOverlay,aw,{BackgroundTransparency=1}):Play()end)if aD.description then aD.descriptor=ac(
ab.Parent.descriptor).new(aD.tab,{description=aD.description})end aD:_applyPickerVisibility(false,false)aD:
_setControlsVisible(false)aD.window:ConnectFor(aD,aD.main:GetPropertyChangedSignal'AbsoluteSize',function()if aD.window.
animating or(aD.window.hidden and aD.window.hasShownOnce)then return end aD:_applyLayout()end)aD:_applyLayout()aD:_render
'instant'return aD end function ad._buildHeader(aB)aB.container=aB.window:Create('Frame',{Size=UDim2.new(0,170,0,16),Position
=UDim2.new(0,20,0,U/2),AnchorPoint=Vector2.new(0,0.5),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=5,Parent=aB.main}
)aB.window:Create('UIListLayout',{Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=
Enum.VerticalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Parent=aB.container})if aB.icon then aB.iconLabel=aB.
window:Create('ImageLabel',{Image=aB.icon,Size=UDim2.fromOffset(16,16),BorderSizePixel=0,BackgroundTransparency=1,ZIndex=
5,ImageTransparency=1,Parent=aB.container},{ImageColor3='ContentColor'})end aB.title=aB.window:Create('TextLabel',{Text=Q.
t(aB.name),Size=UDim2.fromOffset(150,16),AutomaticSize=Enum.AutomaticSize.X,BorderSizePixel=0,BackgroundTransparency=1,
TextSize=16,TextXAlignment=Enum.TextXAlignment.Left,LayoutOrder=1,ZIndex=5,TextTransparency=1,Parent=aB.container},{
TextColor3='ContentColor',FontFace='Font'})aB.preview=aB.window:Create('Frame',{AnchorPoint=Vector2.new(1,0.5),Position=at,
Size=au,BackgroundColor3=aB.value,BorderSizePixel=0,ZIndex=3,BackgroundTransparency=1,Parent=aB.main})aB.window:Create(
'UICorner',{CornerRadius=UDim.new(0,8),Parent=aB.preview})aB.previewShadow=aB.window:CreateGlow(aB.preview,aB.value,20,1)aB.
invisibleGroup=aB.window:Create('Frame',{Size=UDim2.fromScale(1,1),Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.
new(0.5,0.5),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=5,Parent=aB.preview})aB.window:Create('UIListLayout',{
FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.
HorizontalAlignment.Center,Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder,Parent=aB.invisibleGroup})aB.
invisibleIcon=aB.window:Create('ImageLabel',{Image=P.icons.colorpicker,Size=UDim2.fromOffset(16,16),
BackgroundTransparency=1,BorderSizePixel=0,ZIndex=5,ImageTransparency=1,Parent=aB.invisibleGroup},{ImageColor3=
'ContentColor'})aB.invisibleText=aB.window:Create('TextLabel',{Text=Q.t'Invisible',Size=UDim2.fromOffset(0,16),
AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,BorderSizePixel=0,TextSize=15,LayoutOrder=1,ZIndex=5,
TextTransparency=1,Parent=aB.invisibleGroup},{TextColor3='ContentColor',FontFace='Font'})aB.interact=aB.window:Create(
'TextButton',{BackgroundTransparency=1,Size=UDim2.new(1,0,0,U),Position=UDim2.fromScale(0,0),BorderSizePixel=0,Text='',
TextTransparency=1,AutoButtonColor=false,ZIndex=10,Parent=aB.main})end function ad._buildMap(aB)aB.map=aB.window:Create(
'Frame',{Position=UDim2.fromOffset(20,V),Size=UDim2.fromOffset(W.X,W.Y),BackgroundColor3=Color3.fromHSV(aB.hue,1,1),
BorderSizePixel=0,ZIndex=2,BackgroundTransparency=1,Parent=aB.main})aB.window:Create('UICorner',{CornerRadius=UDim.new(0,8
),Parent=aB.map})aB.mapStroke=aB.window:Create('UIStroke',{Color=Color3.fromRGB(255,255,255),Transparency=1,Parent=aB.map})aB
.satOverlay=aB.window:Create('Frame',{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.fromRGB(255,255,255),
BorderSizePixel=0,ZIndex=3,BackgroundTransparency=1,Parent=aB.map})aB.window:Create('UICorner',{CornerRadius=UDim.new(0,8)
,Parent=aB.satOverlay})aB.window:Create('UIGradient',{Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0),
NumberSequenceKeypoint.new(1,1)},Parent=aB.satOverlay})aB.valOverlay=aB.window:Create('Frame',{Size=UDim2.fromScale(1,1),
BackgroundColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,ZIndex=4,BackgroundTransparency=1,Parent=aB.map})aB.window:
Create('UICorner',{CornerRadius=UDim.new(0,8),Parent=aB.valOverlay})aB.window:Create('UIGradient',{Rotation=90,
Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)},Parent=aB.valOverlay})
end function ad._buildPicker(aB)aB:_buildMap()aB.satCursor=aB.window:Create('Frame',{AnchorPoint=Vector2.new(0.5,0.5),Size=
UDim2.fromOffset(12,12),BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=6,BackgroundTransparency=1
,Parent=aB.map})aB.window:Create('UICorner',{CornerRadius=UDim.new(1,0),Parent=aB.satCursor})aB.satCursorStroke=aB.window:
Create('UIStroke',{Color=Color3.fromRGB(255,255,255),Thickness=2,Transparency=1,Parent=aB.satCursor})aB.mapInteract=aB.
window:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Text='',TextTransparency=1,
AutoButtonColor=false,ZIndex=7,Parent=aB.map})aB.hueBar=aB.window:Create('Frame',{Position=UDim2.fromOffset(X,V),Size=UDim2
.fromOffset(Y,W.Y),BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=2,BackgroundTransparency=1,
Parent=aB.main})aB.window:Create('UICorner',{CornerRadius=UDim.new(1,0),Parent=aB.hueBar})aB.window:Create('UIGradient',{
Color=S,Rotation=90,Parent=aB.hueBar})aB.hueHandle=aB.window:Create('Frame',{AnchorPoint=Vector2.new(0.5,0.5),Position=
UDim2.new(0.5,0,0,0),Size=UDim2.fromOffset(Y+8,8),BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=
4,BackgroundTransparency=1,Parent=aB.hueBar})aB.window:Create('UICorner',{CornerRadius=UDim.new(1,0),Parent=aB.hueHandle})aB
.hueHandleStroke=aB.window:Create('UIStroke',{Color=Color3.fromRGB(255,255,255),Thickness=2,Transparency=1,Parent=aB.
hueHandle})aB.hueInteract=aB.window:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.new(1,16,1,8),Position=UDim2.
fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),Text='',TextTransparency=1,AutoButtonColor=false,ZIndex=6,Parent=aB.
hueBar})aB.alphaBar=aB.window:Create('Frame',{Position=UDim2.fromOffset(Z,V),Size=UDim2.fromOffset(_,W.Y),BackgroundColor3
=aB.value,BorderSizePixel=0,ZIndex=2,BackgroundTransparency=1,Parent=aB.main})aB.window:Create('UICorner',{CornerRadius=
UDim.new(1,0),Parent=aB.alphaBar})aB.alphaGradient=aB.window:Create('UIGradient',{Rotation=90,Transparency=NumberSequence.
new{NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)},Parent=aB.alphaBar})aB.alphaHandle=aB.window:Create(
'Frame',{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0,0),Size=UDim2.fromOffset(_+8,8),BackgroundColor3=
Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=4,BackgroundTransparency=1,Parent=aB.alphaBar})aB.window:Create(
'UICorner',{CornerRadius=UDim.new(1,0),Parent=aB.alphaHandle})aB.alphaHandleStroke=aB.window:Create('UIStroke',{Color=
Color3.fromRGB(255,255,255),Thickness=2,Transparency=1,Parent=aB.alphaHandle})aB.alphaInteract=aB.window:Create(
'TextButton',{BackgroundTransparency=1,Size=UDim2.new(1,16,1,8),Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.
new(0.5,0.5),Text='',TextTransparency=1,AutoButtonColor=false,ZIndex=6,Parent=aB.alphaBar})aB.hexBox=aB.window:Create(
'Frame',{Position=UDim2.new(0,ao,0,V+90),Size=UDim2.new(1,-(ao+20),0,30),BackgroundColor3=Color3.fromRGB(255,255,255),
BorderSizePixel=0,ZIndex=2,BackgroundTransparency=1,Parent=aB.main})aB.window:Create('UICorner',{CornerRadius=UDim.new(0,8
),Parent=aB.hexBox})aB.hexBoxStroke=aB.window:Create('UIStroke',{Color=Color3.fromRGB(255,255,255),Transparency=1,Parent=aB.
hexBox})aB.hexInput=aB.window:Create('TextBox',{Text='#'..aB.value:ToHex():upper(),PlaceholderText=Q.t'Smart Input',Size=
UDim2.new(1,-14,1,0),Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,
BorderSizePixel=0,TextSize=15,TextXAlignment=Enum.TextXAlignment.Center,ClearTextOnFocus=false,ZIndex=3,TextTransparency
=1,Parent=aB.hexBox},{TextColor3='ContentColor',FontFace='Font',PlaceholderColor3='PlaceholderColor'})aB.alphaBox=aB.window
:Create('Frame',{Position=UDim2.new(0,ao,0,V+90),Size=UDim2.fromOffset(ap,30),BackgroundColor3=Color3.fromRGB(255,255,255)
,BorderSizePixel=0,ZIndex=2,BackgroundTransparency=1,Parent=aB.main})aB.window:Create('UICorner',{CornerRadius=UDim.new(0,
8),Parent=aB.alphaBox})aB.alphaBoxStroke=aB.window:Create('UIStroke',{Color=Color3.fromRGB(255,255,255),Transparency=1,
Parent=aB.alphaBox})aB.alphaInput=aB.window:Create('TextBox',{Text=tostring(math.round(aB.alpha*100))..'%',PlaceholderText=
'100%',Size=UDim2.new(1,-10,1,0),Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,BorderSizePixel=0,TextSize=15,TextXAlignment=Enum.TextXAlignment.Center,ClearTextOnFocus=false,
ZIndex=3,TextTransparency=1,Parent=aB.alphaBox},{TextColor3='ContentColor',FontFace='Font',PlaceholderColor3=
'PlaceholderColor'})aB.window:ConnectFor(aB,aB.mapInteract.InputBegan,function(aC)if aC.UserInputType==Enum.UserInputType.
MouseButton1 or aC.UserInputType==Enum.UserInputType.Touch then aB:_beginDrag('sat',aC.UserInputType==Enum.UserInputType.
MouseButton1)end end)aB.window:ConnectFor(aB,aB.hueInteract.InputBegan,function(aC)if aC.UserInputType==Enum.UserInputType.
MouseButton1 or aC.UserInputType==Enum.UserInputType.Touch then aB:_beginDrag('hue',aC.UserInputType==Enum.UserInputType.
MouseButton1)end end)aB.window:ConnectFor(aB,aB.alphaInteract.InputBegan,function(aC)if aC.UserInputType==Enum.UserInputType.
MouseButton1 or aC.UserInputType==Enum.UserInputType.Touch then aB:_beginDrag('alpha',aC.UserInputType==Enum.UserInputType.
MouseButton1)end end)aB.window:ConnectFor(aB,am.userInputService.InputEnded,function(aC)if(aC.UserInputType==Enum.
UserInputType.MouseButton1 or aC.UserInputType==Enum.UserInputType.Touch)and aB._drag then aB:_endDrag()end end)aB.window:
ConnectFor(aB,aB.hexInput.FocusLost,function()local aC=M(aB.hexInput.Text)if aC then aB:Set(aC)else aB.hexInput.Text='#'..aB.
value:ToHex():upper()end end)aB.window:ConnectFor(aB,aB.alphaInput.FocusLost,function()local aC=tonumber((aB.alphaInput.Text:
gsub('[^%d%.]','')))if aC then aB:SetAlpha(H(aC/100))else aB.alphaInput.Text=tostring(math.round(aB.alpha*100))..'%'end end)
end function ad._beginDrag(aB,aC,aD)if not aB._isOpen then return end aB._drag=aC aB._dragIsMouse=aD aB:_setHeld(aC)aB:_pump()if aB.
_dragConnection then aB._dragConnection:Disconnect()aB._dragConnection=nil end aB._dragConnection=am.runService.
RenderStepped:Connect(function()local aE=aB._dragIsMouse and not am.userInputService:IsMouseButtonPressed(Enum.
UserInputType.MouseButton1)if aB.window.unloaded or not aB._drag or aE then if aE then aB:_endDrag()return end if aB.
_dragConnection then aB._dragConnection:Disconnect()aB._dragConnection=nil end return end aB:_pump()end)end function ad.
_endDrag(aB)aB._drag=nil aB:_setHeld(nil)if aB._dragConnection then aB._dragConnection:Disconnect()aB._dragConnection=nil end
aB.window:_persist(aB)end function ad._setHeld(aB,aC)local aD,aE,aF=if aC=='sat'then UDim2.fromOffset(16,16)else UDim2.
fromOffset(12,12),if aC=='hue'then UDim2.fromOffset(Y+12,10)else UDim2.fromOffset(Y+8,8),if aC=='alpha'then UDim2.
fromOffset(_+12,10)else UDim2.fromOffset(_+8,8)am.tweenService:Create(aB.satCursor,az,{Size=aD}):Play()am.tweenService:
Create(aB.hueHandle,az,{Size=aE}):Play()am.tweenService:Create(aB.alphaHandle,az,{Size=aF}):Play()end function ad._mouseLocation
(aB)local aC,aD=am.userInputService:GetMouseLocation(),aB.window.screenGui if aD and aD.IgnoreGuiInset then return aC-am.
guiService:GetGuiInset()end return aC end function ad._pump(aB)local aC,aD,aE,aF=aB.hue,aB.sat,aB.val,aB.alpha if aB._drag=='sat'
then local aG=aB.map.AbsoluteSize if aG.X<=0 or aG.Y<=0 then return end local aH=aB:_mouseLocation()aB.sat=H((aH.X-aB.map.
AbsolutePosition.X)/aG.X)aB.val=1-H((aH.Y-aB.map.AbsolutePosition.Y)/aG.Y)elseif aB._drag=='hue'then local aG=aB.hueBar.
AbsoluteSize.Y if aG<=0 then return end local aH=aB:_mouseLocation()aB.hue=H((aH.Y-aB.hueBar.AbsolutePosition.Y)/aG)elseif aB.
_drag=='alpha'then local aG=aB.alphaBar.AbsoluteSize.Y if aG<=0 then return end local aH=aB:_mouseLocation()aB.alpha=1-H((aH.Y-
aB.alphaBar.AbsolutePosition.Y)/aG)else return end if aB.hue==aC and aB.sat==aD and aB.val==aE and aB.alpha==aF then return end aB.
value=Color3.fromHSV(aB.hue,aB.sat,aB.val)aB:_render'drag'aB:_fireCallback()end function ad._render(aB,aC)local aD,aE,aF,aG,aH,aI=
Color3.fromHSV(aB.hue,1,1),UDim2.new(aB.sat,0,1-aB.val,0),UDim2.new(0.5,0,aB.hue,0),UDim2.new(0.5,0,1-aB.alpha,0),1-aB.alpha,1
-0.4*aB.alpha if aC=='instant'then aB.map.BackgroundColor3=aD aB.satCursor.Position,aB.satCursor.BackgroundColor3=aE,aB.value aB.
hueHandle.Position,aB.hueHandle.BackgroundColor3=aF,aD aB.alphaBar.BackgroundColor3=aB.value aB.alphaHandle.Position,aB.
alphaHandle.BackgroundColor3=aG,aB.value aB.preview.BackgroundColor3=aB.value aB.previewShadow.Color=aB.value if not aB.window.
hidden then aB.preview.BackgroundTransparency=aH aB.previewShadow.Transparency=aI end else local aJ=if aC=='drag'then ay else ax
am.tweenService:Create(aB.map,aJ,{BackgroundColor3=aD}):Play()am.tweenService:Create(aB.satCursor,aJ,{Position=aE,
BackgroundColor3=aB.value}):Play()am.tweenService:Create(aB.hueHandle,aJ,{Position=aF,BackgroundColor3=aD}):Play()am.
tweenService:Create(aB.alphaHandle,aJ,{Position=aG,BackgroundColor3=aB.value}):Play()am.tweenService:Create(aB.alphaBar,ax,{
BackgroundColor3=aB.value}):Play()local aK,aL={BackgroundColor3=aB.value},{Color=aB.value}if not aB.window.hidden then aK.
BackgroundTransparency=aH aL.Transparency=aI end am.tweenService:Create(aB.preview,ax,aK):Play()am.tweenService:Create(aB.
previewShadow,ax,aL):Play()end if not aB.hexInput:IsFocused()then aB.hexInput.Text='#'..aB.value:ToHex():upper()end if not aB.
alphaInput:IsFocused()then aB.alphaInput.Text=tostring(math.round(aB.alpha*100))..'%'end aB:_renderInvisible(aC~='instant')
end function ad._renderInvisible(aB,aC)local aD=0 if aB._isOpen and not aB.window.hidden then aD=H((0.12-aB.alpha)/0.12)end
local aE=1-aD if aC then am.tweenService:Create(aB.invisibleIcon,aw,{ImageTransparency=aE}):Play()am.tweenService:Create(aB.
invisibleText,aw,{TextTransparency=aE}):Play()else aB.invisibleIcon.ImageTransparency=aE aB.invisibleText.TextTransparency=aE
end end function ad._fireCallback(aB)aB.window:_runGuarded(aB,aB.callback,aB.value,aB.alpha)end function ad._open(aB)if aB._isOpen
then return end aB._isOpen=true aB:_setControlsVisible(true)if aB._outsideClickConn then aB.window:Disconnect(aB.
_outsideClickConn)end aB._outsideClickConn=aB.window:Connect(am.userInputService.InputBegan,function(aC)if aC.UserInputType~=
Enum.UserInputType.MouseButton1 and aC.UserInputType~=Enum.UserInputType.Touch then return end local aD,aE,aF=aC.Position,aB.
main.AbsolutePosition,aB.main.AbsoluteSize if aD.X<aE.X or aD.X>aE.X+aF.X or aD.Y<aE.Y or aD.Y>aE.Y+aF.Y then aB:_close()end end)am.
tweenService:Create(aB.main,av,{Size=UDim2.new(1,-20,0,aB._openHeight)}):Play()am.tweenService:Create(aB.preview,av,{Position=
aB._previewOpenPos,Size=aB._previewOpenSize}):Play()aB:_applyPickerVisibility(true,true)aB:_renderInvisible(true)end
function ad._close(aB)if not aB._isOpen then return end aB._isOpen=false if aB._outsideClickConn then aB.window:Disconnect(aB.
_outsideClickConn)aB._outsideClickConn=nil end if aB._drag then aB:_endDrag()end if aB.hexInput:IsFocused()then aB.hexInput:
ReleaseFocus()end aB:_applyPickerVisibility(false,true)aB:_renderInvisible(true)am.tweenService:Create(aB.preview,av,{
Position=at,Size=au}):Play()am.tweenService:Create(aB.main,av,{Size=UDim2.new(1,-20,0,U)}):Play()task.delay(aw.Time,function()
if not aB._isOpen then aB:_setControlsVisible(false)end end)end function ad._applyPickerVisibility(aB,aC,aD)local aE={[aB.map]={
BackgroundTransparency=if aC then 0 else 1},[aB.satOverlay]={BackgroundTransparency=if aC then 0 else 1},[aB.valOverlay]={
BackgroundTransparency=if aC then 0 else 1},[aB.mapStroke]={Transparency=if aC then 0.9 else 1},[aB.satCursor]={
BackgroundTransparency=if aC then 0 else 1},[aB.satCursorStroke]={Transparency=if aC then 0 else 1},[aB.hueBar]={
BackgroundTransparency=if aC then 0 else 1},[aB.hueHandle]={BackgroundTransparency=if aC then 0 else 1},[aB.hueHandleStroke]
={Transparency=if aC then 0 else 1},[aB.alphaBar]={BackgroundTransparency=if aC then 0 else 1},[aB.alphaHandle]={
BackgroundTransparency=if aC then 0 else 1},[aB.alphaHandleStroke]={Transparency=if aC then 0 else 1},[aB.hexBox]={
BackgroundTransparency=if aC then 0.9 else 1},[aB.hexBoxStroke]={Transparency=if aC then 0.85 else 1},[aB.hexInput]={
TextTransparency=if aC then 0.4 else 1},[aB.alphaBox]={BackgroundTransparency=if aC then 0.9 else 1},[aB.alphaBoxStroke]={
Transparency=if aC then 0.85 else 1},[aB.alphaInput]={TextTransparency=if aC then 0.4 else 1}}for aF,aG in aE do if aD then am.
tweenService:Create(aF,aw,aG):Play()else for aH,aI in aG do aF[aH]=aI end end end end function ad._setControlsVisible(aB,aC)for aD,aE
in{aB.map,aB.hueBar,aB.alphaBar,aB.hexBox,aB.alphaBox}do aE.Visible=aC end end function ad._applyLayout(aB)local aC=aB.main.
AbsoluteSize.X local aD=if aC>0 and aC<ar then'narrow'else'wide'if aD==aB._layoutMode then return end aB._layoutMode=aD local aE=
as[aD]aB._openHeight=aE.height aB._previewOpenPos=aE.previewPos aB._previewOpenSize=aE.previewSize aB.hexBox.Position=aE.hexPos aB.
hexBox.Size=aE.hexSize aB.alphaBox.Position=aE.alphaFieldPos aB.alphaBox.Size=aE.alphaFieldSize if aB._isOpen then am.
tweenService:Create(aB.main,av,{Size=UDim2.new(1,-20,0,aB._openHeight)}):Play()am.tweenService:Create(aB.preview,av,{Position=
aB._previewOpenPos,Size=aB._previewOpenSize}):Play()end end function ad.Set(aB,aC,aD)aB.value=N(aC,aB.value)aB.hue,aB.sat,aB.val=aB.
value:ToHSV()aB:_render(if aB._isOpen then'animate'else'instant')if not aD then aB:_fireCallback()aB.window:_persist(aB)end
end function ad.SetAlpha(aB,aC,aD)aB.alpha=H(if type(aC)=='number'then aC else aB.alpha)aB:_render(if aB._isOpen then'animate'else
'instant')if not aD then aB:_fireCallback()aB.window:_persist(aB)end end function ad._serialize(aB)return aB.value:ToHex()..
string.format('%02x',math.clamp(math.round((aB.alpha or 1)*255),0,255))end function ad._deserialize(aB,aC)local aD=tostring(aC
)if#aD>=8 then aB:SetAlpha((tonumber(aD:sub(7,8),16)or 255)/255,true)aD=aD:sub(1,6)end aB:Set(Color3.fromHex(aD))end function ad
._setShown(aB,aC,aD)local aE=aB.window if aC then aE:_revealCommon(aB,aD)aE:_reveal(aB.preview,{BackgroundTransparency=1-aB.alpha},aD
)aE:_reveal(aB.previewShadow,{Transparency=1-0.4*aB.alpha},aD)else aE:_hideCommon(aB,aD)aE:_reveal(aB.preview,{
BackgroundTransparency=1},aD)aE:_reveal(aB.previewShadow,{Transparency=1},aD)if aB._isOpen then aB:_close()end end end m(ad)
return ad end)()end,[7]=function()local aa, ab, ac=a(7)return(function(...)local ad={}ad.__index=ad ad.__type='Descriptor'
local al=ac(ab.Parent.Parent.utility.locale)function ad.new(am,an)an=if typeof(an)=='table'then an else{}local ao=setmetatable({
tab=assert(am,'Missing argument #1 (Tab expected)'),window=am.window,description=an.description or an.Description or''},ad)ao.
main=ao.window:Create('Frame',{AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.new(1,-30,0,0),
Parent=ao.tab.tabPage})ao.window:Create('UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,Parent=ao.main})ao.titleLabel=ao
.window:Create('TextLabel',{AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,RichText=true,Size=UDim2.new(1,-90
,0,0),Text=al.t(ao.description),TextSize=12,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextTransparency=1,
Parent=ao.main},{TextColor3='ContentColor',FontFace='Font'})ao.window:Create('Frame',{BackgroundTransparency=1,
BorderSizePixel=0,LayoutOrder=1,Size=UDim2.fromOffset(0,15),Parent=ao.main})return ao end return ad end)()end,[8]=function(
)local aa, ab, ac=a(8)return(function(...)local ad={}ad.__index=ad ad.__type='Drag'local al=ab.Parent.Parent.utility local
am,an=ac(al.variables),ac(al.constants)function ad.new(ao,ap)ap=if typeof(ap)=='table'then ap else{}local aq=setmetatable({window=
assert(ao,'Missing argument #1 (Window expected)')},ad)aq.drag=aq.window:Create('Frame',{BackgroundTransparency=1,Size=UDim2
.fromOffset(150,20),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,aq.window.size.Y.Offset/2+15),ZIndex=an.
zIndex.drag,Visible=false,Parent=aq.window.screenGui})aq.dragCosmetic=aq.window:Create('Frame',{BackgroundColor3=Color3.
fromRGB(255,255,255),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.3),ZIndex=an.zIndex.drag,
BackgroundTransparency=1,Size=UDim2.fromOffset(0,4),Parent=aq.drag})aq.window:Create('UICorner',{CornerRadius=UDim.new(0,
20),Parent=aq.dragCosmetic})aq.window:CreateGlow(aq.dragCosmetic,Color3.fromRGB(255,255,255),10,0.5)aq.dragInteract=aq.window
:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),TextTransparency=1,ZIndex=an.zIndex.drag,Parent=
aq.drag})local ar,as,at,au=false,Vector2.zero,aq.window.screenGui if at and at.IgnoreGuiInset then as=am.guiService:GetGuiInset()
end local function q()local av,aw,ax=am.userInputService and am.userInputService:GetMouseLocation()or Vector2.new(0,0),au or
Vector2.new(0,0),as or Vector2.new(0,0)return av+aw+ax end local function r()local av=q()local aw,ax=av.X,av.Y if aq.window.
settings and aq.window.settings.keepOnScreen then local ay,az,aA=aq.window.main.AbsoluteSize,aq.window.screenGui.AbsoluteSize,
8 local aB,aC=ay.X/2,ay.Y/2 aw=math.clamp(aw,aB+aA,math.max(aB+aA,az.X-aB-aA))ax=math.clamp(ax,aC+aA,math.max(aC+aA,az.Y-aC-aA))end local ay,az=
UDim2.fromOffset(aw,ax),UDim2.fromOffset(aw,ax+(aq.window.main.Size.Y.Offset/2+15))return ay,az end aq.window:Connect(aq.drag.
MouseEnter,function()if not ar and not aq.window.hidden then am.tweenService:Create(aq.dragCosmetic,TweenInfo.new(0.25,Enum.
EasingStyle.Back,Enum.EasingDirection.Out),{BackgroundTransparency=0.5,Size=UDim2.new(0,120,0,4)}):Play()end end)aq.
window:Connect(aq.drag.MouseLeave,function()if not ar and not aq.window.hidden then am.tweenService:Create(aq.dragCosmetic,
TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{BackgroundTransparency=0.7,Size=UDim2.new(0,100,0,4)
}):Play()end end)local function s()if not ar then return end ar=false if not aq.window:_interactive()then return end am.
tweenService:Create(aq.dragCosmetic,TweenInfo.new(0.35,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,
100,0,4),BackgroundTransparency=0.7}):Play()local av,aw,ax=TweenInfo.new(0.3,Enum.EasingStyle.Quint,Enum.EasingDirection.
Out),r()am.tweenService:Create(aq.window.main,av,{Position=aw}):Play()am.tweenService:Create(aq.drag,av,{Position=ax}):Play()end
aq.window:Connect(aq.dragInteract.InputBegan,function(av,aw)if aw then return end local ax=av.UserInputType.Name if ax==
'MouseButton1'or ax=='Touch'then if not aq.window:_interactive()then return end ar=true if at and at.IgnoreGuiInset then as=am.
guiService:GetGuiInset()end au=aq.window.main.AbsolutePosition+aq.window.main.AbsoluteSize*aq.window.main.AnchorPoint-am.
userInputService:GetMouseLocation()if not aq.window.hidden then am.tweenService:Create(aq.dragCosmetic,TweenInfo.new(0.35,
Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,110,0,4),BackgroundTransparency=0}):Play()end end end)
aq.window:Connect(am.userInputService.InputEnded,function(av)local aw=av.UserInputType.Name if aw=='MouseButton1'or aw=='Touch'
then s()end end)aq.window:Connect(am.userInputService.WindowFocusReleased,s)local av,aw=1e-7,1e-60 aq.window:Connect(am.
runService.RenderStepped,function(ax)if not ar then return end if not aq.window:_interactive()then s()return end local ay,az=
r()aq.window.main.Position=aq.window.main.Position:Lerp(ay,1-av^ax)aq.drag.Position=aq.drag.Position:Lerp(az,1-aw^ax)end)return aq
end return ad end)()end,[9]=function()local aa, ab, ac=a(9)return(function(...)local ad={}ad.__index=ad ad.__type=
'Dropdown'local al=ab.Parent.Parent.utility local am,an,ao,ap,aq,ar=ac(al.variables),ac(al.functions),ac(al.image),ac(al.constants),ac(al.
locale),ac(al.HapticEngine)local as,at,au,av,aw,ax,ay,az,aA=ap.icons.chevron,ap.icons.check,ap.icons.dot,ap.icons.search,UDim.new(0,12)
,UDim.new(0,7),30,38,TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out)local function w(aB)local aC
,aD={},{}for aE,aF in aB do if typeof(aF)=='string'and not aC[aF]then aC[aF]=true table.insert(aD,aF)end end return aD end local
function x(aB,aC)if aB==nil then return{}end if typeof(aB)=='string'then return{aB}end if typeof(aB)=='table'then local aD=w(aB)
if not aC and#aD>1 then return{aD[1]}end return aD end return{}end local function y(aB,aC)local aD={}for aE,aF in aB do if table.
find(aC,aF)then table.insert(aD,aF)end end return aD end local function z(aB,aC)if#aB~=#aC then return false end for aD,aE in aB do
if not table.find(aC,aE)then return false end end return true end function ad.new(aB,aC)aC=if typeof(aC)=='table'then aC else{}
local aD,aE=aC.options or aC.Options or{},aC.multiSelect or aC.MultiSelect or aC.MultipleOptions or false local aF=setmetatable(
{tab=assert(aB,'Missing argument #1 (Tab expected)'),window=aB.window,name=aC.name or aC.Name or'Dropdown',icon=aC.icon or aC.
Icon,description=aC.description or aC.Description,forgetState=aC.forgetState or aC.ForgetState or aB.forgetState,flag=aC.flag
or aC.Flag or(not(aC.forgetState or aC.ForgetState or aB.forgetState)and an.deriveFlagFromName(aC.name or aC.Name or'Dropdown')
or nil),callback=aC.callback or aC.Callback or function()end,options=w(aD),multiSelect=aE,placeholderText=aq.resolve(aC.
placeholder or aC.Placeholder or'None'),value=x(aC.value or aC.Value or aC.currentOption or aC.CurrentOption,aE),_isOpen=false
,_optionFrames={}},ad)aF._desiredValue=aF.value aF.value=y(aF.value,aF.options)aF.window:_registerControl(aF)aF.main=aF.window:
Create('Frame',{Size=UDim2.new(1,-20,0,41),BorderSizePixel=0,Name=aF.name,ClipsDescendants=true,BackgroundTransparency=1,
Parent=aF.tab.tabPage})aF.top=aF.window:Create('Frame',{Size=UDim2.new(1,0,0,41),Position=UDim2.fromScale(0,0),
BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,ZIndex=1,Parent=aF.main},{
BackgroundTransparency='ElementTransparency'})aF.stroke=aF.window:StyleElementPanel(aF.top)aF.hoverOverlay=aF.window:
CreateHoverOverlay(aF.top)aF.flashTarget=aF.top aF.container=aF.window:Create('Frame',{BorderSizePixel=0,Parent=aF.top,Size=
UDim2.new(0,170,0,16),Position=UDim2.new(0,20,0.5,0),AnchorPoint=Vector2.new(0,0.5),BackgroundTransparency=1,ZIndex=5})aF
.containerLayout=aF.window:Create('UIListLayout',{Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.Horizontal,
VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Left,Parent=aF.container})if
aF.icon then aF.iconLabel=aF.window:Create('ImageLabel',{Image=aF.icon,Size=UDim2.fromOffset(16,16),BorderSizePixel=0,
BackgroundTransparency=1,ImageTransparency=1,ZIndex=5,Parent=aF.container},{ImageColor3='ContentColor'})end aF.title=aF.
window:Create('TextLabel',{Text=aq.t(aF.name),Size=UDim2.fromOffset(150,16),BorderSizePixel=0,BackgroundTransparency=1,
TextSize=16,AutomaticSize=Enum.AutomaticSize.X,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,LayoutOrder=1,
TextTransparency=1,ZIndex=5,Parent=aF.container},{TextColor3='ContentColor',FontFace='Font'})aF.selectedLabel=aF.window:
Create('TextLabel',{AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-41,0.5,0),Size=UDim2.fromOffset(168,15),
BorderSizePixel=0,BackgroundTransparency=1,TextSize=15,TextXAlignment=Enum.TextXAlignment.Right,TextWrapped=true,
TextTransparency=1,ZIndex=5,Parent=aF.top},{TextColor3='ContentColor',FontFace='Font'})aF.chevron=aF.window:Create(
'ImageLabel',{AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-18,0.5,0),Size=UDim2.fromOffset(16,16),
BorderSizePixel=0,BackgroundTransparency=1,Image='rbxassetid://'..tostring(as),Rotation=180,ImageTransparency=1,ZIndex=5,
Parent=aF.top},{ImageColor3='ContentColor'})aF.interact=aF.window:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.
new(1,0,0,41),Position=UDim2.fromScale(0,0),BorderSizePixel=0,Text='',TextTransparency=1,ZIndex=10,AutoButtonColor=false
,Parent=aF.main})aF.panel=aF.window:Create('Frame',{AnchorPoint=Vector2.new(1,1),Position=UDim2.new(1,0,1,0),Size=UDim2.
new(1,0,1,-47),BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(255,255,255),ZIndex=1,BackgroundTransparency=1,Parent=aF
.main})aF.panelStroke=aF.window:StyleElementPanel(aF.panel)aF.window:Create('UIListLayout',{Padding=UDim.new(0,5),
FillDirection=Enum.FillDirection.Vertical,VerticalAlignment=Enum.VerticalAlignment.Top,HorizontalAlignment=Enum.
HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Parent=aF.panel})aF.window:Create('UIPadding',{PaddingTop=
UDim.new(0,7),PaddingBottom=UDim.new(0,6),Parent=aF.panel})aF:_buildSearch()aF.list=aF.window:Create('ScrollingFrame',{
Active=true,Size=UDim2.new(1,0,0,0),BorderSizePixel=0,BackgroundTransparency=1,ClipsDescendants=true,AutomaticCanvasSize
=Enum.AutomaticSize.Y,CanvasSize=UDim2.new(),ScrollBarImageColor3=Color3.fromRGB(240,240,240),ScrollBarThickness=3,
ScrollBarImageTransparency=1,ScrollingDirection=Enum.ScrollingDirection.Y,LayoutOrder=2,ZIndex=1,Parent=aF.panel})aF.
window:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Fill,Parent=aF.list})aF.listLayout=aF.window:Create('UIListLayout',{
Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder,HorizontalAlignment=Enum.HorizontalAlignment.Center,Parent=aF.
list})aF.window:Create('UIPadding',{PaddingBottom=UDim.new(0,2),Parent=aF.list})local function F(aG)return table.find(aF.
value,aG)~=nil end local function G(aG,aH)local aI=F(aG.name)local aJ,aK,aL,m=if aF._isOpen then(aI and 0.9 or 0.95)else 1,if aF.
_isOpen then(aI and 0 or 0.3)else 1,if aF._isOpen then(aI and 0 or 0.7)else 1,if aF._isOpen then(aI and 0.85 or 0.93)else 1 ao
.assign(aG.checkIcon,'Image',if aI then at else au)if aH then local P=TweenInfo.new(0.3,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out)am.tweenService:Create(aG.frame,P,{BackgroundTransparency=aJ}):Play()am.tweenService:Create(aG.title,P,{
TextTransparency=aK}):Play()am.tweenService:Create(aG.checkIcon,P,{ImageTransparency=aL}):Play()am.tweenService:Create(aG.
stroke,P,{Transparency=m}):Play()else aG.frame.BackgroundTransparency=aJ aG.title.TextTransparency=aK aG.checkIcon.
ImageTransparency=aL aG.stroke.Transparency=m end end local function H()if aF.multiSelect then local aG=#aF.value if aG==0
then aF.selectedLabel.Text=aF.placeholderText elseif aG==1 then aF.selectedLabel.Text=aF.value[1]else aF.selectedLabel.Text=aq.
resolve'Various'end else aF.selectedLabel.Text=aF.value[1]or aF.placeholderText end end aF._renderOptionState=G aF.
_updateSelectedLabel=H local function I(aG)local aH=aF.window:Create('Frame',{Size=UDim2.new(1,-12,0,38),BorderSizePixel=0,
BackgroundTransparency=1,Parent=aF.list},{BackgroundColor3='DropdownHighlight'})local aI,aJ,aK,aL=aF.window:Create('UICorner',
{CornerRadius=ax,Parent=aH}),aF.window:Create('UIStroke',{Color=Color3.fromRGB(255,255,255),Transparency=1,Parent=aH}),aF.
window:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Text='',TextTransparency=1,ZIndex=50,
Parent=aH}),aF.window:Create('Frame',{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,14,0.5,0),Size=UDim2.fromOffset(
170,16),BorderSizePixel=0,BackgroundTransparency=1,ZIndex=5,Parent=aH})aF.window:Create('UIListLayout',{Padding=UDim.new(0
,5),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,SortOrder=Enum.SortOrder
.LayoutOrder,Parent=aL})local m,P=aF.window:Create('ImageLabel',{Image='rbxassetid://'..tostring(at),Size=UDim2.fromOffset(
16,16),BorderSizePixel=0,BackgroundTransparency=1,ImageTransparency=1,ZIndex=5,Parent=aL},{ImageColor3='ContentColor'}),aF
.window:Create('TextLabel',{Text=aG,Size=UDim2.fromOffset(170,16),BorderSizePixel=0,BackgroundTransparency=1,TextSize=16,
TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,LayoutOrder=1,TextTransparency=1,ZIndex=5,Parent=aL},{TextColor3
='ContentColor',FontFace='Font'})local Q={name=aG,frame=aH,interact=aK,title=P,checkIcon=m,container=aL,stroke=aJ,corner=aI,
connections={}}table.insert(Q.connections,aF.window:ConnectFor(aF,aH.MouseEnter,function()if not aF._isOpen or not aF.window:
_interactive()then return end if F(aG)then return end am.tweenService:Create(aH,TweenInfo.new(0.2,Enum.EasingStyle.Quint,
Enum.EasingDirection.Out),{BackgroundTransparency=0.9}):Play()am.tweenService:Create(P,TweenInfo.new(0.2,Enum.EasingStyle
.Quint,Enum.EasingDirection.Out),{TextTransparency=0.15}):Play()end))table.insert(Q.connections,aF.window:ConnectFor(aF,aH.
MouseLeave,function()if not aF._isOpen then return end if F(aG)then return end am.tweenService:Create(aH,TweenInfo.new(0.2,
Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{BackgroundTransparency=0.95}):Play()am.tweenService:Create(P,TweenInfo.
new(0.2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{TextTransparency=0.3}):Play()end))table.insert(Q.connections,aF
.window:ConnectFor(aF,aK.MouseButton1Click,function()if not aF._isOpen then return end ar.click()local R=F(aG)if not aF.
multiSelect then if R then aF:_close()return end table.clear(aF.value)table.insert(aF.value,aG)else if R then local S=table.
find(aF.value,aG)if S then table.remove(aF.value,S)end else table.insert(aF.value,aG)end end aF._desiredValue=table.clone(aF.
value)for S,U in aF._optionFrames do G(U,true)end H()aF.window:_runGuarded(aF,aF.callback,aF:_callbackValue())aF.window:
_persist(aF)if not aF.multiSelect then task.wait(0.1)aF:_close()end end))return Q end aF._buildOption=I for aG,aH in aF.options
do local aI=I(aH)table.insert(aF._optionFrames,aI)end H()aF:_updateCorners()aF.window:ConnectFor(aF,aF.interact.
MouseButton1Click,function()ar.click()if aF._isOpen then aF:_close()else aF:_open()end end)aF.window:ConnectFor(aF,aF.main.
MouseEnter,function()if aF._isOpen or not aF.window:_interactive()then return end am.tweenService:Create(aF.title,TweenInfo.
new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{TextColor3=aF.window.theme.ElementTextHoverColor}):Play()am.
tweenService:Create(aF.hoverOverlay,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
BackgroundTransparency=0.97}):Play()end)aF.window:ConnectFor(aF,aF.main.MouseLeave,function()am.tweenService:Create(aF.title,
TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{TextColor3=aF.window.theme.ContentColor}):Play()am.
tweenService:Create(aF.hoverOverlay,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
BackgroundTransparency=1}):Play()end)if aF.description then aF.descriptor=ac(ab.Parent.descriptor).new(aF.tab,{description=aF.
description})end return aF end function ad._callbackValue(aB)if aB.multiSelect then return table.clone(aB.value)end return aB.
value[1]end function ad._buildSearch(aB)aB._searchOpen=false aB.searchbar=aB.window:Create('Frame',{Name='Search',Size=UDim2.
new(1,-12,0,ay),BorderSizePixel=0,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,LayoutOrder=1,
ClipsDescendants=false,ZIndex=1,Parent=aB.panel})aB.window:Create('UICorner',{CornerRadius=UDim.new(0,12),Parent=aB.
searchbar})aB.searchStroke=aB.window:Create('UIStroke',{Color=Color3.fromRGB(255,255,255),Transparency=1,Parent=aB.
searchbar})aB.searchShadow=aB.window:CreateGlow(aB.searchbar,Color3.fromRGB(255,255,255),20,1)aB.searchToggle=aB.window:
Create('TextButton',{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Text='',TextTransparency=1,ZIndex=51,Parent=aB.
searchbar})aB.searchInput=aB.window:Create('TextBox',{Text='',PlaceholderText=aq.t'Search...',Size=UDim2.new(1,-58,0,16),
Position=UDim2.new(0,44,0.5,0),AnchorPoint=Vector2.new(0,0.5),BackgroundTransparency=1,TextSize=16,TextXAlignment=Enum.
TextXAlignment.Left,ClearTextOnFocus=false,TextEditable=false,Interactable=false,ZIndex=52,TextTransparency=1,Parent=aB.
searchbar},{TextColor3='ContentColor',FontFace='Font',PlaceholderColor3='PlaceholderColor'})aB.searchIcon=aB.window:
Create('ImageButton',{Image='rbxassetid://'..tostring(av),Size=UDim2.fromOffset(20,20),Position=UDim2.new(0,24,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,ScaleType=Enum.ScaleType.Fit,AutoButtonColor=false,ZIndex=53,
ImageTransparency=1,Parent=aB.searchbar},{ImageColor3='ContentColor'})aB.window:ConnectFor(aB,aB.searchToggle.
MouseButton1Click,function()if not aB._searchOpen then aB:_expandSearch()end end)aB.window:ConnectFor(aB,aB.searchIcon.
MouseButton1Click,function()if aB._searchOpen then aB:_collapseSearch()else aB:_expandSearch()end end)aB.window:ConnectFor(aB
,aB.searchInput:GetPropertyChangedSignal'Text',function()aB:_applyFilter(aB.searchInput.Text)end)aB.window:ConnectFor(aB,aB.
searchInput.FocusLost,function()if aB.searchInput.Text==''then aB:_collapseSearch()end end)end function ad._expandSearch(aB)
if aB._searchOpen then return end aB._searchOpen=true aB.searchInput.TextEditable=true aB.searchInput.Interactable=true am.
tweenService:Create(aB.searchbar,aA,{Size=UDim2.new(1,-12,0,az),BackgroundTransparency=0.92}):Play()am.tweenService:Create(aB
.searchStroke,aA,{Transparency=0.86}):Play()am.tweenService:Create(aB.searchShadow,aA,{Transparency=0.92}):Play()am.
tweenService:Create(aB.searchInput,aA,{TextTransparency=0.3}):Play()aB.searchInput:CaptureFocus()end function ad.
_collapseSearch(aB)if not aB._searchOpen then return end aB._searchOpen=false aB.searchInput.TextEditable=false aB.
searchInput.Interactable=false aB.searchInput:ReleaseFocus()aB.searchInput.Text=''am.tweenService:Create(aB.searchbar,aA,{
Size=UDim2.new(1,-12,0,ay),BackgroundTransparency=1}):Play()am.tweenService:Create(aB.searchStroke,aA,{Transparency=1}):
Play()am.tweenService:Create(aB.searchShadow,aA,{Transparency=1}):Play()am.tweenService:Create(aB.searchInput,aA,{
TextTransparency=1}):Play()end function ad._applyFilter(aB,aC)aC=string.lower(aC or'')for aD,aE in aB._optionFrames do aE.frame.
Visible=aC==''or string.find(string.lower(aE.name),aC,1,true)~=nil end aB:_updateCorners()aB:_resizeToOptions()end function ad
._resizeToOptions(aB)if not aB._isOpen then return end am.tweenService:Create(aB.main,aA,{Size=UDim2.new(1,-20,0,aB:
_openHeight())}):Play()end function ad._updateCorners(aB)local aC={}for aD,aE in aB._optionFrames do if aE.frame.Visible then
table.insert(aC,aE)end end for aD,aE in aC do local aF,aG=if aD==1 then aw else ax,if aD==#aC then aw else ax aE.corner.TopLeftRadius=aF
aE.corner.TopRightRadius=aF aE.corner.BottomLeftRadius=aG aE.corner.BottomRightRadius=aG end end function ad._openHeight(aB)
local aC=0 for aD,aE in aB._optionFrames do if aE.frame.Visible then aC+=1 end end local aD=aC*38+math.max(0,aC-1)*5+2 return
math.min(180,95+aD)end function ad._open(aB)if aB._isOpen then return end aB._isOpen=true if aB._outsideClickConn then aB.
window:Disconnect(aB._outsideClickConn)end aB._outsideClickConn=aB.window:Connect(am.userInputService.InputBegan,function(aC)
if aC.UserInputType~=Enum.UserInputType.MouseButton1 and aC.UserInputType~=Enum.UserInputType.Touch then return end local
aD,aE,aF=aC.Position,aB.main.AbsolutePosition,aB.main.AbsoluteSize if aD.X<aE.X or aD.X>aE.X+aF.X or aD.Y<aE.Y or aD.Y>aE.Y+aF.Y then aB:
_close()end end)am.tweenService:Create(aB.main,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{
Size=UDim2.new(1,-20,0,aB:_openHeight())}):Play()am.tweenService:Create(aB.chevron,TweenInfo.new(0.7,Enum.EasingStyle.
Exponential,Enum.EasingDirection.Out),{Rotation=0}):Play()am.tweenService:Create(aB.panel,TweenInfo.new(0.4,Enum.
EasingStyle.Quint,Enum.EasingDirection.Out),{BackgroundTransparency=aB.window.theme.ElementTransparency or 0}):Play()am.
tweenService:Create(aB.panelStroke,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Transparency=aB.
window.theme.ElementStrokeTransparency}):Play()am.tweenService:Create(aB.searchIcon,TweenInfo.new(0.4,Enum.EasingStyle.
Quint,Enum.EasingDirection.Out),{ImageTransparency=0.5}):Play()for aC,aD in aB._optionFrames do aB._renderOptionState(aD,true
)end end function ad._close(aB)if not aB._isOpen then return end aB._isOpen=false if aB._outsideClickConn then aB.window:
Disconnect(aB._outsideClickConn)aB._outsideClickConn=nil end aB:_collapseSearch()am.tweenService:Create(aB.chevron,TweenInfo.
new(0.7,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Rotation=180}):Play()am.tweenService:Create(aB.panel,
TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play()am.tweenService:
Create(aB.panelStroke,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Transparency=1}):Play()am.
tweenService:Create(aB.searchIcon,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{ImageTransparency=1
}):Play()for aC,aD in aB._optionFrames do aB._renderOptionState(aD,true)end am.tweenService:Create(aB.main,TweenInfo.new(0.5,
Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(1,-20,0,41)}):Play()end function ad._destroyOption
(aB,aC)if aC.connections then for aD,aE in aC.connections do local aF=table.find(aB.connections,aE)if aF then table.remove(aB.
connections,aF)end aB.window:Disconnect(aE)end aC.connections=nil end aB.window:DestroySubtree(aC.frame)end function ad.Refresh
(aB,aC)aB.options=w(aC or{})for aD,aE in aB._optionFrames do aB:_destroyOption(aE)end table.clear(aB._optionFrames)local aD=aB.value
aB.value=y(aB._desiredValue or aB.value,aB.options)local aE=not z(aB.value,aD)for aF,aG in aB.options do local aH=aB._buildOption(aG)
table.insert(aB._optionFrames,aH)if aB._isOpen then aB._renderOptionState(aH,false)end end aB._updateSelectedLabel()aB:
_applyFilter(if aB._searchOpen then aB.searchInput.Text else'')if aE then aB.window:_runGuarded(aB,aB.callback,aB:
_callbackValue())aB.window:_persist(aB)end end function ad.Add(aB,aC)if typeof(aC)~='string'or aC==''then return end if table.
find(aB.options,aC)then return end table.insert(aB.options,aC)local aD=aB._buildOption(aC)table.insert(aB._optionFrames,aD)if aB.
_isOpen then aB._renderOptionState(aD,true)end aB:_applyFilter(if aB._searchOpen then aB.searchInput.Text else'')end function
ad.Remove(aB,aC)local aD=table.find(aB.options,aC)if not aD then return end table.remove(aB.options,aD)for aE,aF in aB._optionFrames
do if aF.name==aC then aB:_destroyOption(aF)table.remove(aB._optionFrames,aE)break end end local aE=table.find(aB.value,aC)if aE
then table.remove(aB.value,aE)aB._desiredValue=table.clone(aB.value)aB._updateSelectedLabel()aB.window:_runGuarded(aB,aB.
callback,aB:_callbackValue())aB.window:_persist(aB)end aB:_applyFilter(if aB._searchOpen then aB.searchInput.Text else'')end
function ad.Set(aB,aC,aD)local aE=x(aC,aB.multiSelect)aB._desiredValue=aE aB.value=y(aE,aB.options)for aF,aG in aB._optionFrames do aB.
_renderOptionState(aG,true)end aB._updateSelectedLabel()if not aD then aB.window:_runGuarded(aB,aB.callback,aB:_callbackValue()
)aB.window:_persist(aB)end end function ad._setShown(aB,aC,aD)local aE=aB.window aE:_reveal(aB.stroke,{Transparency=if aC then aE.
theme.ElementStrokeTransparency else 1},aD)aE:_reveal(aB.title,{TextTransparency=if aC then 0 else 1},aD)aE:_reveal(aB.top,{
BackgroundTransparency=if aC then(aE.theme.ElementTransparency or 0)else 1},aD)if aB.iconLabel then aE:_reveal(aB.iconLabel,{
ImageTransparency=if aC then 0 else 1},aD)end if aB.descriptor then aE:_reveal(aB.descriptor.titleLabel,{TextTransparency=if
aC then 0.7 else 1},aD)end aE:_reveal(aB.selectedLabel,{TextTransparency=if aC then 0.5 else 1},aD)aE:_reveal(aB.chevron,{
ImageTransparency=if aC then 0.5 else 1},aD)if not aC and aB._isOpen then aB:_close()end end function ad.MoveTo(aB,aC)aB.tab:
_moveElement(aB,aC)end function ad.MoveToTop(aB)aB.tab:_moveElement(aB,1)end function ad.MoveToBottom(aB)aB.tab:_moveElement(aB,#aB
.tab.elements)end function ad.MoveUp(aB)local aC=table.find(aB.tab.elements,aB)if aC then aB.tab:_moveElement(aB,aC-1)end end
function ad.MoveDown(aB)local aC=table.find(aB.tab.elements,aB)if aC then aB.tab:_moveElement(aB,aC+1)end end return ad end)()end,
[10]=function()local aa, ab, ac=a(10)return(function(...)local ad={}ad.__index=ad ad.__type='Group'local al,am,an,ao,ap=ac(ab.
Parent.Parent.utility.moveable),ac(ab.Parent.Parent.utility.log),ac(ab.Parent.Parent.utility.ordering),8,{button=true,toggle
=true,stat=true,slider=true}function ad.new(aq,ar)ar=if typeof(ar)=='table'then ar else{}local as=string.lower(ar.direction or ar
.Direction or'row')local at=as=='column'or as=='vertical'local au=not at local av=if au then Enum.FillDirection.Horizontal else
Enum.FillDirection.Vertical local aw,ax=setmetatable({tab=assert(aq,'Missing argument #1 (Tab expected)'),window=aq.window,
direction=av,compact=au,forgetState=aq.forgetState,elements={}},ad),aq.direction==Enum.FillDirection.Horizontal aw.main=aw.
window:Create('Frame',{Name='Group',BackgroundTransparency=1,BorderSizePixel=0,AutomaticSize=Enum.AutomaticSize.Y,Size=
if au then UDim2.new(1,-20,0,0)else UDim2.new(1,0,0,0),Parent=aw.tab.tabPage})if ax then aw.main.Size=UDim2.new(0,0,0,0)aw.
window:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Fill,Parent=aw.main})end aw.tabPage=aw.main aw.layout=aw.window:Create(
'UIListLayout',{FillDirection=av,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,ao),VerticalAlignment=if au then
Enum.VerticalAlignment.Center else Enum.VerticalAlignment.Top,HorizontalAlignment=if au then Enum.HorizontalAlignment.
Left else Enum.HorizontalAlignment.Center,Parent=aw.main})return aw end function ad._add(aq,ar,as)if aq.compact and not ap[ar]
then am.warn(`Volcano: a row only holds compact elements (button/toggle/stat/slider), ignoring '{ar}'. Use a column for it.`
)return nil end local at=ac(ab.Parent[ar]).new(aq,as)table.insert(aq.elements,at)an(at,#aq.elements*10)aq.window:_restoreLate(at)if aq
.compact then aq:_wrapChild(at)end aq:_reflowRow()if not aq.window.hidden then at:_setShown(true,true)end return at end
function ad._reflowRow(aq)if aq.direction~=Enum.FillDirection.Horizontal then return end local ar=#aq.elements>0 for as,at in aq
.elements do if at.__type~='Group'then ar=false break end end aq.layout.Padding=if ar then UDim.new(0,-10)else UDim.new(0,ao)
end function ad._wrapChild(aq,ar)aq.layout.Wraps=true aq.layout.HorizontalFlex=Enum.UIFlexAlignment.Fill ar._widthManaged=true
local as=if ar._minWidth then ar:_minWidth()else 0 if as>0 then ar.main.AutomaticSize=Enum.AutomaticSize.None ar.main.Size=
UDim2.new(0,as,ar.main.Size.Y.Scale,ar.main.Size.Y.Offset)end end function ad.CreateButton(aq,ar)return aq:_add('button',ar)end
function ad.CreateToggle(aq,ar)return aq:_add('toggle',ar)end function ad.CreateSwitch(aq,ar)return aq:_add('toggle',ar)end
function ad.CreateStat(aq,ar)return aq:_add('stat',ar)end function ad.CreateSlider(aq,ar)return aq:_add('slider',ar)end function ad
.CreateDropdown(aq,ar)return aq:_add('dropdown',ar)end function ad.CreateSection(aq,ar)return aq:_add('section',ar)end function ad
._addGroup(aq,ar)ar=if typeof(ar)=='table'then table.clone(ar)else{}if aq.direction==Enum.FillDirection.Horizontal then aq.
layout.VerticalAlignment=Enum.VerticalAlignment.Top if aq.tab.direction~=Enum.FillDirection.Horizontal then aq.main.Size=
UDim2.new(1,0,0,0)end end local as=ad.new(aq,ar)table.insert(aq.elements,as)as.main.LayoutOrder=#aq.elements*10 aq:_reflowRow()
return as end function ad.CreateGroup(aq,ar)return aq:_addGroup(ar)end function ad._moveElement(aq,ar,as)local at=table.find(aq.
elements,ar)if not at then return end table.remove(aq.elements,at)as=math.clamp(as,1,#aq.elements+1)table.insert(aq.elements,as,ar
)for au,av in aq.elements do an(av,au*10)end end function ad._setShown(aq,ar,as)for at,au in aq.elements do au:_setShown(ar,as)end end
function ad._refreshTheme(aq)for ar,as in aq.elements do if as._refreshTheme then as:_refreshTheme()end end end al(ad)return ad
end)()end,[11]=function()local aa, ab, ac=a(11)return(function(...)local ad={}ad.__index=ad ad.__type='Input'local al=ab.
Parent.Parent.utility local am,an,ao,ap,aq,ar=ac(al.variables),ac(al.functions),ac(al.moveable),ac(al.locale),ac(al.constants),ac(al.
HapticEngine)local as,at=aq.pillResizeInfo,TweenInfo.new(0.15,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)local
function p(au)local av,aw=au:match'^([%d%.%-]+)%^([%d%.%-]+)$'if av and aw then local ax,ay=tonumber(av),tonumber(aw)if ax and ay
then return ax^ay end end return tonumber(au)end function ad.new(au,av)av=if typeof(av)=='table'then av else{}local aw=
setmetatable({tab=assert(au,'Missing argument #1 (Tab expected)'),window=au.window,name=av.name or av.Name or'Input',icon=av.
icon or av.Icon,description=av.description or av.Description,forgetState=av.forgetState or av.ForgetState or au.forgetState,
placeholder=av.placeholder or av.Placeholder or'',numeric=av.numeric or av.Numeric or false,clearOnFocus=av.clearOnFocus or av
.ClearOnFocus or false,callback=av.callback or av.Callback or function()end},ad)aw.value=tostring(av.value or av.Value or av.
currentValue or av.CurrentValue or'')aw.flag=av.flag or av.Flag or(not aw.forgetState and an.deriveFlagFromName(aw.name)or nil)
aw.window:_registerControl(aw)aw.main=aw.window:Create('Frame',{Size=UDim2.new(1,-20,0,41),BorderSizePixel=0,Name=aw.name,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,Parent=aw.tab.tabPage},{BackgroundTransparency=
'ElementTransparency'})aw.stroke=aw.window:StyleElementBody(aw.main)aw.hoverOverlay=aw.window:CreateHoverOverlay(aw.main)aw.
container=aw.window:Create('Frame',{Size=UDim2.new(0,170,0,16),Position=UDim2.new(0,20,0.5,0),AnchorPoint=Vector2.new(0,
0.5),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=5,Parent=aw.main})aw.window:Create('UIListLayout',{Padding=UDim.
new(0,5),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,Parent=aw.container}
)if aw.icon then aw.iconLabel=aw.window:Create('ImageLabel',{Image=aw.icon,Size=UDim2.fromOffset(16,16),BorderSizePixel=0,
BackgroundTransparency=1,ZIndex=5,ImageTransparency=1,Parent=aw.container},{ImageColor3='ContentColor'})end aw.title=aw.
window:Create('TextLabel',{Text=ap.t(aw.name),Size=UDim2.fromOffset(150,16),AutomaticSize=Enum.AutomaticSize.X,
BorderSizePixel=0,BackgroundTransparency=1,TextSize=16,TextXAlignment=Enum.TextXAlignment.Left,LayoutOrder=1,ZIndex=5,
TextTransparency=1,Parent=aw.container},{TextColor3='ContentColor',FontFace='Font'})aw.box=aw.window:Create('Frame',{
AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-7,0,20),Size=UDim2.fromOffset(85,30),BorderSizePixel=0,
BackgroundTransparency=1,Parent=aw.main},{BackgroundColor3='FieldBackground'})aw.window:Create('UICorner',{CornerRadius=
UDim.new(1,0),Parent=aw.box})aw.boxStroke=aw.window:Create('UIStroke',{Transparency=1,Parent=aw.box},{Color='SurfaceStroke'}
)aw.glow=aw.window:CreateGlow(aw.box,'FieldGlow',20,1)aw._glowIdle=1 aw.input=aw.window:Create('TextBox',{Text=aw.value,
PlaceholderText=ap.t(aw.placeholder),Size=UDim2.new(1,-15,0,15),Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(
0.5,0.5),BackgroundTransparency=1,BorderSizePixel=0,TextSize=15,TextXAlignment=Enum.TextXAlignment.Center,TextTruncate=
Enum.TextTruncate.AtEnd,ClearTextOnFocus=aw.clearOnFocus,TextTransparency=1,Parent=aw.box},{TextColor3='ContentColor',
FontFace='Font',PlaceholderColor3='PlaceholderColor'})aw.window:ConnectFor(aw,aw.input:GetPropertyChangedSignal'Text',
function()if aw.numeric then local ax=(aw.input.Text:gsub('[^%d%.%-eE%^]',''))if ax~=aw.input.Text then aw.input.Text=ax return
end end aw:_sizeBox(true)end)aw.window:ConnectFor(aw,aw.input.Focused,function()am.tweenService:Create(aw.input,at,{
TextTransparency=0}):Play()end)aw.window:ConnectFor(aw,aw.input.FocusLost,function()am.tweenService:Create(aw.input,at,{
TextTransparency=0.6}):Play()if aw.clearOnFocus and aw.input.Text==''and aw.value~=''then aw.input.Text=aw.value return end
if aw.input.Text==aw.value then return end aw:_commit(aw.input.Text)end)aw.window:_wireElementHover(aw)if aw.description then aw
.descriptor=ac(ab.Parent.descriptor).new(aw.tab,{description=aw.description})end aw:_sizeBox(false)return aw end function ad.
_sizeBox(au,av)local aw=au.input.Text~=''and au.input.Text or au.placeholder local ax=math.clamp(an.textWidth(au.window.theme.
Font,15,aw)+30,70,220)if av then am.tweenService:Create(au.box,as,{Size=UDim2.fromOffset(ax,30)}):Play()else au.box.Size=UDim2.
fromOffset(ax,30)end end function ad._commit(au,av,aw)av=tostring(av)if au.numeric then local ax=p(av)if not ax or ax==math.huge or
ax==-math.huge then if au.input.Text~=au.value then au.input.Text=au.value end return end av=tostring(ax)end local ax=av~=au.value
au.value=av if au.input.Text~=av then au.input.Text=av end if not aw then au.window:_runGuarded(au,au.callback,av)au.window:
_persist(au)if ax and not au.window._loading then ar.click()au.window:_flashResult(au,true)end end end function ad.Set(au,av,aw)au:
_commit(av,aw)end function ad._setShown(au,av,aw)local ax=au.window if av then ax:_revealCommon(au,aw)ax:_reveal(au.box,{
BackgroundTransparency=ax.theme.FieldTransparency},aw)ax:_reveal(au.boxStroke,{Transparency=0.85},aw)ax:_reveal(au.input,{
TextTransparency=0.6},aw)else ax:_hideCommon(au,aw)ax:_reveal(au.box,{BackgroundTransparency=1},aw)ax:_reveal(au.boxStroke,{
Transparency=1},aw)ax:_reveal(au.input,{TextTransparency=1},aw)end end function ad._refreshTheme(au)am.tweenService:Create(au.
box,TweenInfo.new(0.5,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{BackgroundTransparency=au.window.theme.
FieldTransparency}):Play()end ao(ad)return ad end)()end,[12]=function()local aa, ab, ac=a(12)return(function(...)local ad
={}ad.__index=ad ad.__type='Keybind'local al=ab.Parent.Parent.utility local am,an,ao,ap,aq,ar,as,at=ac(al.variables),ac(al.functions),ac(al
.moveable),ac(al.locale),ac(al.constants),ac(al.HapticEngine),ac(al.enums),ac(al.log)local au,av,aw=aq.pillResizeInfo,TweenInfo.new(
0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{[Enum.UserInputType.MouseButton1]='MB1',[Enum.UserInputType.
MouseButton2]='MB2',[Enum.UserInputType.MouseButton3]='MB3'}local function s(ax)if typeof(ax)~='EnumItem'or ax==Enum.
KeyCode.Unknown then return'None'end return aw[ax]or ax.Name end local function t(ax)if typeof(ax)=='EnumItem'then return ax
end if type(ax)=='string'then local ay,az=pcall(function()return Enum.KeyCode[ax]end)if ay and az then return az end local aA,aB=
pcall(function()return Enum.UserInputType[ax]end)if aA and aB and aw[aB]then return aB end end return Enum.KeyCode.Unknown end
function ad.new(ax,ay)ay=if typeof(ay)=='table'then ay else{}local az=setmetatable({tab=assert(ax,
'Missing argument #1 (Tab expected)'),window=ax.window,name=ay.name or ay.Name or'Keybind',icon=ay.icon or ay.Icon,
description=ay.description or ay.Description,forgetState=ay.forgetState or ay.ForgetState or ax.forgetState,isMenuToggle=ay.
isMenuToggle or ay.IsMenuToggle or false,callback=ay.callback or ay.Callback or function()end,onChanged=ay.onChanged or ay.
OnChanged or function()end,hold=ay.hold or ay.Hold or false,holdThreshold=ay.holdThreshold or ay.HoldThreshold or 0.2,
recording=false},ad)az.value=t(ay.value or ay.Value or ay.default or ay.Default)az.flag=ay.flag or ay.Flag or(not az.forgetState
and an.deriveFlagFromName(az.name)or nil)az.window:_registerControl(az)az.main=az.window:Create('Frame',{Size=UDim2.new(1,-20,
0,41),BorderSizePixel=0,Name=az.name,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,Parent=az.tab.
tabPage},{BackgroundTransparency='ElementTransparency'})az.stroke=az.window:StyleElementBody(az.main)az.hoverOverlay=az.
window:CreateHoverOverlay(az.main)az.container=az.window:Create('Frame',{Size=UDim2.new(0,170,0,16),Position=UDim2.new(0,20
,0.5,0),AnchorPoint=Vector2.new(0,0.5),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=5,Parent=az.main})az.window:
Create('UIListLayout',{Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.
VerticalAlignment.Center,Parent=az.container})if az.icon then az.iconLabel=az.window:Create('ImageLabel',{Image=az.icon,Size=
UDim2.fromOffset(16,16),BorderSizePixel=0,BackgroundTransparency=1,ZIndex=5,ImageTransparency=1,Parent=az.container},{
ImageColor3='ContentColor'})end az.title=az.window:Create('TextLabel',{Text=ap.t(az.name),Size=UDim2.fromOffset(150,16),
AutomaticSize=Enum.AutomaticSize.X,BorderSizePixel=0,BackgroundTransparency=1,TextSize=16,TextXAlignment=Enum.
TextXAlignment.Left,LayoutOrder=1,ZIndex=5,TextTransparency=1,Parent=az.container},{TextColor3='ContentColor',FontFace=
'Font'})az.box=az.window:Create('TextButton',{AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-7,0,20),Size=UDim2.
fromOffset(40,30),AutoButtonColor=false,Text='',BorderSizePixel=0,BackgroundTransparency=1,Parent=az.main},{
BackgroundColor3='FieldBackground'})az.window:Create('UICorner',{CornerRadius=UDim.new(1,0),Parent=az.box})az.boxStroke=az.
window:Create('UIStroke',{Transparency=1,Parent=az.box},{Color='SurfaceStroke'})az.glow=az.window:CreateGlow(az.box,
'FieldGlow',20,1)az._glowIdle=0.9 az.keyLabel=az.window:Create('TextLabel',{Text=s(az.value),Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,BorderSizePixel=0,TextSize=15,TextXAlignment=Enum.TextXAlignment.Center,ZIndex=2,
TextTransparency=1,Parent=az.box},{TextColor3='ContentColor',FontFace='Font'})az.window:ConnectFor(az,az.box.
MouseButton1Click,function()ar.click()if az.recording then az:_stopRecording()else az:_startRecording()end end)az.window:
ConnectFor(az,am.userInputService.InputBegan,function(aA,aB)if aB then return end if az.recording then az:_capture(aA)return end
if az.window._recordingKeybind then return end if az:_matches(aA)then if az.hold then az:_beginHold(aA)else az.window:
_runGuarded(az,az.callback,az.value)end end end)az.window:_wireElementHover(az)if az.description then az.descriptor=ac(ab.Parent.
descriptor).new(az.tab,{description=az.description})end az:_sizeBox(false)return az end function ad._sizeBox(ax,ay)local az=math
.clamp(an.textWidth(ax.window.theme.Font,15,ax.keyLabel.Text)+28,40,200)if ay then am.tweenService:Create(ax.box,au,{Size=UDim2
.fromOffset(az,30)}):Play()else ax.box.Size=UDim2.fromOffset(az,30)end end function ad._startRecording(ax)local ay=ax.window.
_recordingKeybind if ay and ay~=ax then ay:_stopRecording()end ax.recording=true ax.window._recordingKeybind=ax ax.keyLabel.Text
=ap.resolve'Recording'ax:_sizeBox(true)am.tweenService:Create(ax.glow,av,{Transparency=0.7}):Play()am.tweenService:Create(ax.
keyLabel,av,{TextTransparency=0}):Play()end function ad._stopRecording(ax)ax.recording=false if ax.window._recordingKeybind==
ax then local ay=ax.window task.defer(function()if ay._recordingKeybind==ax then ay._recordingKeybind=nil end end)end ax.
keyLabel.Text=s(ax.value)ax:_sizeBox(true)am.tweenService:Create(ax.glow,av,{Transparency=0.9}):Play()am.tweenService:Create(ax
.keyLabel,av,{TextTransparency=0.6}):Play()end function ad._capture(ax,ay)local az if ay.UserInputType==Enum.UserInputType.
Keyboard then if ay.KeyCode==Enum.KeyCode.Escape then ax:_stopRecording()return end if ay.KeyCode==Enum.KeyCode.Backspace
then ax:_bind(Enum.KeyCode.Unknown)return end az=ay.KeyCode elseif ay.UserInputType==Enum.UserInputType.MouseButton2 or ay.
UserInputType==Enum.UserInputType.MouseButton3 then az=ay.UserInputType end if not az then return end if ax.isMenuToggle
then local aA=ax.window:_keybindUsing(az,ax)if aA then ax.window:Notify{title=ap.resolve'Keybind unavailable',content=string.
format(ap.resolve'%s is bound to %s. Kept %s.',s(az),aA.name,s(ax.value))}ax:_stopRecording()ax.window:_flashResult(ax,false)
return end elseif az==ax.window.settings.toggleKeybind then ax.window:Notify{title=ap.resolve'Keybind unavailable',content=
string.format(ap.resolve'%s is the menu toggle key. Kept %s.',s(az),s(ax.value))}ax:_stopRecording()ax.window:_flashResult(ax,
false)return end ax:_bind(az)end function ad._bind(ax,ay)ax.value=ay ax:_stopRecording()ax.window:_runGuarded(ax,ax.onChanged,ay)ax.
window:_persist(ax)ax.window:_flashResult(ax,true)end function ad._matches(ax,ay)local az=ax.value if typeof(az)~='EnumItem'or az
==Enum.KeyCode.Unknown then return false end if az.EnumType==Enum.KeyCode then return ay.KeyCode==az elseif az.EnumType==
Enum.UserInputType then return ay.UserInputType==az end return false end function ad._beginHold(ax,ay)if ax._holding or ax.
_holdPress then return end local az={}ax._holdPress=az local aA,aB=ay.KeyCode,ay.UserInputType task.delay(ax.holdThreshold,
function()if ax._holdPress~=az then return end ax._holding=true ax.window:_runGuarded(ax,ax.callback,true)end)local aC aC=ax.
window:ConnectFor(ax,am.userInputService.InputEnded,function(aD)local aE=if aA~=Enum.KeyCode.Unknown then aD.KeyCode==aA else aD
.UserInputType==aB if not aE then return end if ax.connections then local aF=table.find(ax.connections,aC)if aF then table.
remove(ax.connections,aF)end end ax.window:Disconnect(aC)if ax._holdPress==az then ax._holdPress=nil end if ax._holding then ax.
_holding=false ax.window:_runGuarded(ax,ax.callback,false)end end)end function ad.Set(ax,ay,az)local aA=t(ay)if aA~=Enum.KeyCode.
Unknown then if ax.isMenuToggle then local aB=ax.window:_keybindUsing(aA,ax)if aB then at.warn('Volcano: '..s(aA)..
" is bound to '"..tostring(aB.name).."'; kept "..s(ax.value))return end elseif aA==ax.window.settings.toggleKeybind then at.
warn('Volcano: '..s(aA)..' is the menu toggle key; kept '..s(ax.value))return end end ax.value=aA if ax.recording then ax:
_stopRecording()else ax.keyLabel.Text=s(ax.value)ax:_sizeBox(true)end if not az then ax.window:_runGuarded(ax,ax.onChanged,ax.
value)ax.window:_persist(ax)end end function ad._serialize(ax)return{tostring(ax.value.EnumType),ax.value.Value}end function ad
._deserialize(ax,ay)local az=tostring(ay[1]):gsub('^Enum%.','')local aA,aB=pcall(function()return Enum[az]end)if not aA or not aB
then return end local aC=as.itemFromValue(aB,ay[2])if aC then ax:Set(aC)end end function ad._setShown(ax,ay,az)local aA=ax.window if
ay then aA:_revealCommon(ax,az)aA:_reveal(ax.box,{BackgroundTransparency=aA.theme.FieldTransparency},az)aA:_reveal(ax.boxStroke,{
Transparency=0.85},az)aA:_reveal(ax.keyLabel,{TextTransparency=0.6},az)aA:_reveal(ax.glow,{Transparency=0.9},az)else aA:
_hideCommon(ax,az)aA:_reveal(ax.box,{BackgroundTransparency=1},az)aA:_reveal(ax.boxStroke,{Transparency=1},az)aA:_reveal(ax.
keyLabel,{TextTransparency=1},az)aA:_reveal(ax.glow,{Transparency=1},az)end end function ad._refreshTheme(ax)am.tweenService:
Create(ax.box,TweenInfo.new(0.5,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{BackgroundTransparency=ax.window.theme.
FieldTransparency}):Play()end ao(ad)return ad end)()end,[13]=function()local aa, ab, ac=a(13)return(function(...)local ad
={}ad.__index=ad ad.__type='Notification'local al=ab.Parent.Parent.utility local am,an,ao,ap,aq,ar,as,at,au,av,aw,ax,ay=ac(al.variables),ac(al
.functions),ac(al.constants),ac(al.HapticEngine),TweenInfo.new(0.45,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
TweenInfo.new(0.38,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),TweenInfo.new(0.28,Enum.EasingStyle.
Exponential,Enum.EasingDirection.Out),TweenInfo.new(0.55,Enum.EasingStyle.Back,Enum.EasingDirection.Out),TweenInfo.new(
0.65,Enum.EasingStyle.Cubic,Enum.EasingDirection.In),UDim2.new(0.5,360,0.5,0),UDim2.new(0.5,0,0.5,0),6,8 local function
u(az)return math.clamp(#az*0.06+3,3,9)end function ad.new(az,aA)aA=if typeof(aA)=='table'then aA else{}local aB=setmetatable({
window=assert(az,'Missing argument #1 (Window expected)'),title=aA.title or aA.Title or'Notification',content=aA.content or
aA.Content or'',icon=aA.icon or aA.Icon,_hovered=false,_dismissed=false},ad)aB.duration=aA.duration or aA.Duration or u(aB.
content)local aC=aB.icon~=nil and aB.icon~=0 and aB.icon~=''aB.main=aB.window:Create('Frame',{Name='Notification',
BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),BorderSizePixel=0,ZIndex=ao.zIndex.notification,Parent=aB.window.
notifications})aB.window:Create('UIPadding',{PaddingTop=UDim.new(0,ay),Parent=aB.main})aB.body=aB.window:Create('Frame',{
BackgroundColor3=Color3.fromRGB(255,255,255),Size=UDim2.new(1,0,1,0),Position=av,AnchorPoint=Vector2.new(0.5,0.5),Active=
true,BorderSizePixel=0,ZIndex=ao.zIndex.notification,BackgroundTransparency=1,Parent=aB.main})aB.window:Create('UIGradient'
,{Rotation=270,Offset=Vector2.new(0,-0.1),Parent=aB.body},{Color={'WindowColor',an.toColorSequence}})aB.window:Create(
'UICorner',{Parent=aB.body},{CornerRadius='CornerRoundness'})aB.stroke=aB.window:Create('UIStroke',{Transparency=1,Parent=aB
.body},{Color='SurfaceStroke'})aB.shadow=aB.window:CreateGlow(aB.body,'ShadowColor',20,1)aB.window:Create('UIPadding',{
PaddingLeft=UDim.new(0,20),PaddingRight=UDim.new(0,20),Parent=aB.body})aB.window:Create('UIListLayout',{FillDirection=Enum
.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.
Left,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,14),Parent=aB.body})if aC then aB.iconLabel=aB.window:Create(
'ImageLabel',{Image=aB.icon,Size=UDim2.fromOffset(24,24),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=1,ZIndex=
ao.zIndex.notification,ImageTransparency=1,Parent=aB.body},{ImageColor3='ContentColor'})end aB.container=aB.window:Create(
'Frame',{Size=UDim2.fromOffset(aC and 222 or 260,0),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,
BorderSizePixel=0,LayoutOrder=2,ZIndex=ao.zIndex.notification,Parent=aB.body})aB.window:Create('UIListLayout',{
FillDirection=Enum.FillDirection.Vertical,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,4),Parent=aB.container}
)aB.titleLabel=aB.window:Create('TextLabel',{Text=aB.title,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,TextSize=16,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,LayoutOrder=1,ZIndex=ao.
zIndex.notification,TextTransparency=1,Parent=aB.container},{TextColor3='ContentColor',FontFace='TitleFont'})if aB.content
~=''then aB.descriptionLabel=aB.window:Create('TextLabel',{Text=aB.content,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,BackgroundTransparency=1,TextSize=15,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,LayoutOrder=2,ZIndex=ao.zIndex.notification,TextTransparency=1,Parent=aB.container}
,{TextColor3='ContentColor',FontFace='Font'})end aB.window._notificationCount=(aB.window._notificationCount or 0)+1 aB.main
.LayoutOrder=aB.window._notificationCount local aD=aB.window._liveNotifications if not aD then aD={}aB.window.
_liveNotifications=aD end table.insert(aD,aB)while#aD>ax do local aE=table.remove(aD,1)if aE and aE~=aB then task.spawn(aE._dismiss
,aE)end end aB._connections={aB.window:Connect(aB.body.MouseEnter,function()aB._hovered=true end),aB.window:Connect(aB.body.
MouseLeave,function()aB._hovered=false end),aB.window:Connect(aB.body.InputBegan,function(aE)if aE.UserInputType==Enum.
UserInputType.MouseButton1 or aE.UserInputType==Enum.UserInputType.Touch then aB:_dismiss()end end)}task.spawn(function()aB
:_show()end)return aB end function ad._measure(az)local aA=az.iconLabel and 222 or 260 local aB=an.textHeight(az.window.theme.
TitleFont,16,az.title,aA)if az.descriptionLabel then aB=aB+4+an.textHeight(az.window.theme.Font,15,az.content,aA)end return math.
max(aB,az.iconLabel and 24 or 0)+28 end function ad._show(az)local aA=az:_measure()+ay if not az.main.Parent then return end ap.
notify()am.tweenService:Create(az.main,aq,{Size=UDim2.new(1,0,0,aA)}):Play()am.tweenService:Create(az.body,at,{Position=aw}):
Play()am.tweenService:Create(az.body,ar,{BackgroundTransparency=0}):Play()am.tweenService:Create(az.titleLabel,as,{
TextTransparency=0}):Play()am.tweenService:Create(az.stroke,ar,{Transparency=0.95}):Play()am.tweenService:Create(az.shadow,as,
{Transparency=0.6}):Play()task.wait(0.05)if az._dismissed or not az.main.Parent then return end if az.iconLabel then am.
tweenService:Create(az.iconLabel,as,{ImageTransparency=0}):Play()end task.wait(0.05)if az._dismissed or not az.main.Parent
then return end if az.descriptionLabel then am.tweenService:Create(az.descriptionLabel,as,{TextTransparency=0.35}):Play()end
local aB=0 while aB<az.duration and not az._dismissed and az.main.Parent do local aC=task.wait()if not az._hovered then aB+=aC
end end az:_dismiss()end function ad._dismiss(az)if az._dismissed then return end az._dismissed=true local aA=az.window.
_liveNotifications local aB=aA and table.find(aA,az)if aA and aB then table.remove(aA,aB)end if not az.main.Parent then return
end am.tweenService:Create(az.body,ar,{BackgroundTransparency=1}):Play()am.tweenService:Create(az.stroke,ar,{Transparency=1}):
Play()am.tweenService:Create(az.shadow,as,{Transparency=1}):Play()am.tweenService:Create(az.titleLabel,as,{TextTransparency=1}
):Play()if az.descriptionLabel then am.tweenService:Create(az.descriptionLabel,as,{TextTransparency=1}):Play()end if az.
iconLabel then am.tweenService:Create(az.iconLabel,as,{ImageTransparency=1}):Play()end am.tweenService:Create(az.body,au,{Size
=UDim2.new(1,-90,1,0)}):Play()local aC=am.tweenService:Create(az.main,au,{Size=UDim2.new(1,0,0,0)})aC:Play()aC.Completed:Wait(
)if not az.main.Parent then return end for aD,aE in az._connections do az.window:Disconnect(aE)end az.window:DestroySubtree(az.
main)end return ad end)()end,[14]=function()local aa, ab, ac=a(14)return(function(...)local ad={}ad.__index=ad ad.__type=
'Popup'local al=ab.Parent.Parent.utility local am,an,ao,ap,aq,ar,as,at,au,av,aw,ax,ay,az,aA=ac(al.variables),ac(al.functions),ac(al.constants),
ac(al.locale),ac(al.log),ac(al.HapticEngine),TweenInfo.new(0.48,Enum.EasingStyle.Back,Enum.EasingDirection.Out),TweenInfo.new(
0.36,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),TweenInfo.new(0.25,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),TweenInfo.new(0.32,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),400,22,24,22,16 local aB,aC
,aD,aE,aF,aG,aH,aI=aw-ax*2,18,14,15,16,12,300,4 local aJ,aK,aL,m,P,Q,R,S,U,V,W,X,Y,Z,_=aB-aI*2,16,13,20,10,15,14,8,10,40,8,UDim.new(1
,0),16,0.5,{}local function T(aM)for aN=#_,1,-1 do local aO=_[aN]if aO._closed or not aO.screenGui.Parent then table.remove(_,
aN)end end return _[#_]==aM end function ad.new(aM,aN)aN=if typeof(aN)=='table'then aN else{}local aO=setmetatable({window=
assert(aM,'Missing argument #1 (Window expected)'),title=aN.title or aN.Title or'Popup',subtitle=aN.subtitle or aN.Subtitle,
content=aN.content or aN.Content,icon=aN.icon or aN.Icon,boxes=aN.boxes or aN.Boxes,options=aN.options or aN.Options,dismissable
=if aN.dismissable~=nil then aN.dismissable elseif aN.Dismissable~=nil then aN.Dismissable else true,_reveal={},_connections
={},_closed=false},ad)if not aO.options or#aO.options==0 then aO.options={{text='Okay'}}end aO:_build()table.insert(_,aO)task.
spawn(function()aO:_show()end)return aO end function ad._fade(aM,aN,aO,aP)table.insert(aM._reveal,{instance=aN,prop=aO,to=aP})
return aN end function ad._build(aM)local aN,aO=aM.window,aM.icon~=nil and aM.icon~=0 and aM.icon~=''aM.screenGui=aN:Create(
'ScreenGui',{Name=am.httpService:GenerateGUID(false),IgnoreGuiInset=true,ResetOnSpawn=false,Enabled=true,DisplayOrder=ao.
displayOrder.popup,ZIndexBehavior=Enum.ZIndexBehavior.Global,Parent=am.guiContainer})aM.backdrop=aN:Create('Frame',{Name=
'Backdrop',BackgroundColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(1,1),Active=true,
BackgroundTransparency=1,Parent=aM.screenGui})aM:_fade(aM.backdrop,'BackgroundTransparency',Z)aM.card=aN:Create('Frame',{Name
='Card',BackgroundColor3=Color3.fromRGB(255,255,255),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,14),
Size=UDim2.fromOffset(aw,0),AutomaticSize=Enum.AutomaticSize.Y,Active=true,BorderSizePixel=0,BackgroundTransparency=1,
Parent=aM.screenGui})aM:_fade(aM.card,'BackgroundTransparency',0)aN:Create('UIGradient',{Rotation=270,Offset=Vector2.new(0,-0.1
),Parent=aM.card},{Color={'WindowColor',an.toColorSequence}})aN:Create('UICorner',{Parent=aM.card},{CornerRadius=
'CornerRoundness'})aM.cardStroke=aN:Create('UIStroke',{Transparency=1,Parent=aM.card},{Color='SurfaceStroke'})aM:_fade(aM.
cardStroke,'Transparency',0.95)aM.cardShadow=aN:CreateGlow(aM.card,'ShadowColor',26,1)aM:_fade(aM.cardShadow,'Transparency',
0.55)aN:Create('UIPadding',{PaddingLeft=UDim.new(0,ax),PaddingRight=UDim.new(0,ax),PaddingTop=UDim.new(0,ay),PaddingBottom=
UDim.new(0,az),Parent=aM.card})aN:Create('UIListLayout',{FillDirection=Enum.FillDirection.Vertical,HorizontalAlignment=Enum
.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,aA),Parent=aM.card})local aP=aM:
_measureHeader(aO)aM:_buildHeader(aO,aP)local aQ=aM:_buildContent()aM:_buildFooter()local aR=2+(aQ>0 and 1 or 0)local aS=ay+aP+aQ+V+az
+aA*(aR-1)aM.card.Size=UDim2.fromOffset(aw,aS)aM.card.AutomaticSize=Enum.AutomaticSize.None if aM.dismissable then table.
insert(aM._connections,aN:Connect(aM.backdrop.InputBegan,function(aT)if aT.UserInputType==Enum.UserInputType.MouseButton1
or aT.UserInputType==Enum.UserInputType.Touch then aM:Close()end end))table.insert(aM._connections,aN:Connect(am.
userInputService.InputBegan,function(aT,aU)if not aU and aT.KeyCode==Enum.KeyCode.Escape and T(aM)then aM:Close()end end))
end end function ad._buildHeader(aM,aN,aO)local aP=aM.window local aQ=aP:Create('Frame',{Name='Header',BackgroundTransparency
=1,Size=UDim2.new(1,0,0,aO),LayoutOrder=1,Parent=aM.card})aP:Create('UIListLayout',{FillDirection=Enum.FillDirection.
Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Left,SortOrder=
Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,aG),Parent=aQ})if aN then aM:_fade(aP:Create('ImageLabel',{Image=aM.icon,Size
=UDim2.fromOffset(aF,aF),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=1,ImageTransparency=1,Parent=aQ},{
ImageColor3='TitlingColor'}),'ImageTransparency',0)end local aR=aP:Create('Frame',{Name='Text',BackgroundTransparency=1,
Size=UDim2.new(1,aN and-(aF+aG)or 0,0,aM._columnH),LayoutOrder=2,Parent=aQ})aP:Create('UIListLayout',{FillDirection=Enum.
FillDirection.Vertical,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,3),Parent=aR})aM:_fade(aP:Create(
'TextLabel',{Text=ap.t(aM.title),Size=UDim2.new(1,0,0,aM._titleH),BackgroundTransparency=1,TextSize=aC,TextXAlignment=Enum
.TextXAlignment.Left,TextWrapped=true,LayoutOrder=1,TextTransparency=1,Parent=aR},{TextColor3='TitlingColor',FontFace=
'Font'}),'TextTransparency',0)if aM.subtitle and aM.subtitle~=''then aM:_fade(aP:Create('TextLabel',{Text=ap.t(aM.subtitle
),Size=UDim2.new(1,0,0,aM._subH),BackgroundTransparency=1,TextSize=aD,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped
=true,LayoutOrder=2,TextTransparency=1,Parent=aR},{TextColor3='TitlingColor',FontFace='Font'}),'TextTransparency',0.55)
end end function ad._buildContent(aM)if(not aM.content or aM.content=='')and(not aM.boxes or#aM.boxes==0)then return 0
end local aN,aO=aM.window,if aM.boxes and#aM.boxes>0 then aM:_measureBoxes()else aM:_measureText()local aP=math.min(aO,aH)+aI
*2 local aQ=aN:Create('ScrollingFrame',{Name='Content',BackgroundTransparency=1,BorderSizePixel=0,Size=UDim2.new(1,0,0,aP)
,CanvasSize=UDim2.new(0,0,0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=4,ScrollBarImageColor3=Color3
.fromRGB(255,255,255),ScrollingDirection=Enum.ScrollingDirection.Y,LayoutOrder=2,ScrollBarImageTransparency=1,Parent=aM.
card})aM:_fade(aQ,'ScrollBarImageTransparency',0.8)aN:Create('UIPadding',{PaddingLeft=UDim.new(0,aI),PaddingRight=UDim.
new(0,aI),PaddingTop=UDim.new(0,aI),PaddingBottom=UDim.new(0,aI),Parent=aQ})if aM.boxes and#aM.boxes>0 then aN:Create(
'UIListLayout',{FillDirection=Enum.FillDirection.Vertical,HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=
Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,S),Parent=aQ})for aR,aS in aM.boxes do aM:_buildBox(aQ,aS,aR)end else aM:_fade(
aN:Create('TextLabel',{Text=ap.t(aM.content),Size=UDim2.new(1,0,0,aO),BackgroundTransparency=1,TextSize=aE,TextXAlignment=
Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true,TextTransparency=1,Parent=aQ},{
TextColor3='ContentColor',FontFace='Font'}),'TextTransparency',0.5)end return aP end function ad._buildBox(aM,aN,aO,aP)local
aQ=aM.window aO=if typeof(aO)=='table'then aO else{title=tostring(aO)}local aR,aS,aT,aU,aV=aO.icon~=nil and aO.icon~=0 and aO.icon~=
'',aM:_measureBox(aO)local aW=aQ:Create('Frame',{Name='Box',BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0
,Size=UDim2.new(1,-U,0,aS),LayoutOrder=aP,BackgroundTransparency=1,Parent=aN})aM:_fade(aW,'BackgroundTransparency',0)local
aX=aQ:StyleElementPanel(aW)aM:_fade(aX,'Transparency',aQ.theme.ElementStrokeTransparency)aQ:Create('UIPadding',{PaddingLeft
=UDim.new(0,aK),PaddingRight=UDim.new(0,aK),PaddingTop=UDim.new(0,aL),PaddingBottom=UDim.new(0,aL),Parent=aW})aQ:Create(
'UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,
HorizontalAlignment=Enum.HorizontalAlignment.Left,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,P),Parent=aW})
if aR then aM:_fade(aQ:Create('ImageLabel',{Image=aO.icon,Size=UDim2.fromOffset(m,m),BackgroundTransparency=1,
BorderSizePixel=0,LayoutOrder=1,ImageTransparency=1,Parent=aW},{ImageColor3='ContentColor'}),'ImageTransparency',0)end
local aY=aQ:Create('Frame',{BackgroundTransparency=1,Size=UDim2.new(1,aR and-(m+P)or 0,0,aV),LayoutOrder=2,Parent=aW})aQ:
Create('UIListLayout',{FillDirection=Enum.FillDirection.Vertical,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0
,3),Parent=aY})aM:_fade(aQ:Create('TextLabel',{Text=ap.t(aO.title or aO.Title or''),Size=UDim2.new(1,0,0,aT),
BackgroundTransparency=1,TextSize=Q,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,LayoutOrder=1,
TextTransparency=1,Parent=aY},{TextColor3='ContentColor',FontFace='TitleFont'}),'TextTransparency',0)local aZ=aO.
description or aO.Description if aZ and aZ~=''then aM:_fade(aQ:Create('TextLabel',{Text=ap.t(aZ),Size=UDim2.new(1,0,0,aU),
BackgroundTransparency=1,TextSize=R,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,
TextWrapped=true,LayoutOrder=2,TextTransparency=1,Parent=aY},{TextColor3='ContentColor',FontFace='Font'}),
'TextTransparency',0.65)end end function ad._buildFooter(aM)local aN=aM.window local aO=aN:Create('Frame',{Name='Footer',
BackgroundTransparency=1,Size=UDim2.new(1,0,0,V),LayoutOrder=3,Parent=aM.card})aN:Create('UIListLayout',{FillDirection=
Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.
HorizontalAlignment.Center,HorizontalFlex=Enum.UIFlexAlignment.Fill,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.
new(0,W),Parent=aO})for aP,aQ in aM.options do aM:_buildButton(aO,aQ,aP)end end function ad._buildButton(aM,aN,aO,aP)
local aQ=aM.window aO=if typeof(aO)=='table'then aO else{text=tostring(aO)}local aR,aS,aT,aU,aV,aW,aX=aO.style or aO.Style or
'neutral',aO.text or aO.Text or aO.name or aO.Name or'Okay',aO.callback or aO.Callback if aR=='primary'then aU,aV,aW,aX=aQ.
theme.AccentColor,aQ.theme.AccentStroke,aQ.theme.AccentStroke,0.1 elseif aR=='danger'then aU,aV,aW,aX=aQ.theme.ErrorColor,aQ
.theme.ErrorStrokeColor,aQ.theme.ErrorStrokeColor,0 else aU,aV,aW,aX=aQ.theme.NeutralButton,aQ.theme.NeutralButtonHover,aQ.
theme.NeutralButtonStroke,0.85 end local aY=aQ:Create('Frame',{Name='Button',BackgroundColor3=aU,BorderSizePixel=0,Size=
UDim2.new(0,0,0,V),LayoutOrder=aP,BackgroundTransparency=1,Parent=aN})aM:_fade(aY,'BackgroundTransparency',0)aQ:Create(
'UIFlexItem',{FlexMode=Enum.UIFlexMode.Fill,Parent=aY})aQ:Create('UICorner',{CornerRadius=X,Parent=aY})local aZ=aQ:Create(
'UIStroke',{Color=aW,Transparency=1,Parent=aY})aM:_fade(aZ,'Transparency',aX)aM:_fade(aQ:Create('TextLabel',{Text=ap.t(aS),
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,TextSize=Y,TextXAlignment=Enum.TextXAlignment.Center,TextTruncate=
Enum.TextTruncate.AtEnd,TextColor3=an.contrastText(aU),TextTransparency=1,Parent=aY},{FontFace='Font'}),'TextTransparency',
0)local a_,a0=aQ:Create('TextButton',{Text='',BackgroundTransparency=1,Size=UDim2.fromScale(1,1),BorderSizePixel=0,
ZIndex=2,Parent=aY}),TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)table.insert(aM._connections,aQ:
Connect(a_.MouseEnter,function()if aM._closed then return end am.tweenService:Create(aY,a0,{BackgroundColor3=aV}):Play()end
))table.insert(aM._connections,aQ:Connect(a_.MouseLeave,function()am.tweenService:Create(aY,a0,{BackgroundColor3=aU}):Play(
)end))table.insert(aM._connections,aQ:Connect(a_.MouseButton1Click,function()if aM._closed then return end ar.click()am.
tweenService:Create(aZ,a0,{Transparency=1}):Play()if aT then task.spawn(function()local a1,a2=pcall(aT)if not a1 then aq.
warn("Volcano: popup button '"..aS.."' callback errored:")aq.print(a2)end end)end aM:Close()end))end function ad.
_measureHeader(aM,aN)local aO=aB-(if aN then aF+aG else 0)aM._titleH=an.textHeight(aM.window.theme.Font,aC,ap.resolve(aM.title
),aO)aM._subH=if aM.subtitle and aM.subtitle~=''then an.textHeight(aM.window.theme.Font,aD,ap.resolve(aM.subtitle),aO)else
0 aM._columnH=aM._titleH+(if aM._subH>0 then 3+aM._subH else 0)return math.max(aM._columnH,if aN then aF else 0)end
function ad._measureText(aM)return an.textHeight(aM.window.theme.Font,aE,ap.resolve(aM.content),aJ)end function ad._measureBox
(aM,aN)aN=if typeof(aN)=='table'then aN else{title=tostring(aN)}local aO=aN.icon~=nil and aN.icon~=0 and aN.icon~=''
local aP=aJ-U-aK*2-(if aO then m+P else 0)local aQ,aR,aS=an.textHeight(aM.window.theme.TitleFont,Q,ap.resolve(aN.title or aN
.Title or''),aP),0,aN.description or aN.Description if aS and aS~=''then aR=an.textHeight(aM.window.theme.Font,R,ap.
resolve(aS),aP)end local aT=aQ+(if aR>0 then 3+aR else 0)local aU=math.max(aT,if aO then m else 0)+aL*2 return aU,aQ,aR,
aT end function ad._measureBoxes(aM)local aN=0 for aO,aP in aM.boxes do aN+=(aM:_measureBox(aP))if aO<#aM.boxes then aN+=
S end end return aN end function ad._show(aM)if not aM.screenGui.Parent then return end ar.notify()am.tweenService:Create(
aM.card,as,{Position=UDim2.new(0.5,0,0.5,0)}):Play()for aN,aO in aM._reveal do local aP=if aO.instance==aM.backdrop then
av else at am.tweenService:Create(aO.instance,aP,{[aO.prop]=aO.to}):Play()end end function ad.Close(aM)if aM._closed then
return end aM._closed=true local aN=table.find(_,aM)if aN then table.remove(_,aN)end for aO,aP in aM._connections do aM.
window:Disconnect(aP)end aM._connections={}if not aM.screenGui.Parent then return end am.tweenService:Create(aM.card,au,{
Position=UDim2.new(0.5,0,0.5,10)}):Play()for aO,aP in aM._reveal do am.tweenService:Create(aP.instance,au,{[aP.prop]=1}):
Play()end task.delay(au.Time,function()aM.window:DestroySubtree(aM.screenGui)end)end return ad end)()end,[15]=function()local
aa, ab, ac=a(15)return(function(...)local ad=ab.Parent.Parent.utility local al,am,an,ao,ap,aq,ar,as=ac(ad.
variables),ac(ad.constants),ac(ad.locale),ac(ab.Parent.action),{},TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.
EasingDirection.Out),0.6,0.2 local function d(at)if at.__type=='Group'then local au={}local function g(av)for aw,ax in av.
elements do if ax.__type=='Group'then g(ax)elseif ax.name then table.insert(au,ax.name)end end end g(at)return table.concat(au,
'\n')end return at.name or''end local function e(at)local au={}for av,aw in at.tabs do if aw.neglectSelector then continue end
for ax,ay in aw.elements do if ay.__type~='Section'then table.insert(au,ay)end end end return au end local function f(at,au,av)al.
tweenService:Create(at.searchPill,av,{BackgroundTransparency=if au then 0.9 else 1}):Play()al.tweenService:Create(at.
searchStroke,av,{Transparency=if au then 0.85 else 1}):Play()al.tweenService:Create(at.searchShadow,av,{Transparency=if au
then 0.92 else 1}):Play()al.tweenService:Create(at.searchIcon,av,{ImageTransparency=if au then 0.65 else 1}):Play()al.
tweenService:Create(at.searchInput,av,{TextTransparency=if au then 0.2 else 1}):Play()end local function g(at,au,av)for aw,ax in
at.tabs do if not ax.neglectSelector and ax.topbarItem then ax:_applyVisual(if au then(if at.selectedTab==ax then'selected'else
'unselected')else'hidden',av)end end end local function h(at,au)au=string.lower(au or'')local av=false for aw,ax in at.
_searchUnits do local ay=au==''or string.find(ax.text,au,1,true)~=nil ax.unit.main.Visible=ay if ax.unit.descriptor then ax.unit
.descriptor.main.Visible=ay end av=av or ay end at.searchEmpty.Visible=not av and au~=''end local function i(at)at._searchUnits={
}local au=0 for av,aw in e(at)do au+=1 local ax=aw.main table.insert(at._searchUnits,{unit=aw,text=string.lower(d(aw)),homeParent=
ax.Parent,homeOrder=ax.LayoutOrder,descOrder=aw.descriptor and aw.descriptor.main.LayoutOrder})ax.LayoutOrder=au*10 ax.Parent=at
.searchPage ax.Visible=true if aw.descriptor then aw.descriptor.main.LayoutOrder=au*10+1 aw.descriptor.main.Parent=at.
searchPage aw.descriptor.main.Visible=true end end end local function j(at)for au,av in at._searchUnits do local aw=av.unit if
aw.main and aw.main.Parent then aw.main.LayoutOrder=av.homeOrder aw.main.Parent=av.homeParent aw.main.Visible=true end if aw.
descriptor and aw.descriptor.main and aw.descriptor.main.Parent then aw.descriptor.main.LayoutOrder=av.descOrder aw.
descriptor.main.Parent=av.homeParent aw.descriptor.main.Visible=true end end at._searchUnits={}end function ap.open(at)if at.
_searching or at.minimised or not at:_interactive()then return end at._searching=true i(at)h(at,'')at:_jumpTo(at.searchPage)g(at
,false,aq)task.delay(aq.Time,function()if at._searching then at.tabList.Visible=false end end)at.searchPill.Visible=true f(
at,true,aq)at.searchInput:CaptureFocus()al.tweenService:Create(at.searchAction.iconLabel,aq,{ImageTransparency=as}):Play()
end function ap.close(at,au)if not at._searching then return end au=au or{}at._searching=false at.searchInput.Text=''at.
searchInput:ReleaseFocus()at.searchEmpty.Visible=false j(at)local av=if au.jumpTo==nil then at.selectedTab and at.selectedTab.
tabPage else au.jumpTo if av then at:_jumpTo(av)end f(at,false,aq)task.delay(aq.Time,function()if not at._searching then at.
searchPill.Visible=false end end)if au.showTabs then at.tabList.Visible=true g(at,true,aq)end al.tweenService:Create(at.
searchAction.iconLabel,aq,{ImageTransparency=ar}):Play()end function ap.toggle(at)if at._searching then ap.close(at,{
showTabs=true})else ap.open(at)end end function ap.build(at)at._searching=false at.searchPage=at:Create('ScrollingFrame',{
Name='Search',Size=UDim2.new(1,-20,1,0),Position=UDim2.new(0.5,0,0,68),AnchorPoint=Vector2.new(0.5,0.5),BorderSizePixel=
0,BackgroundTransparency=1,AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.new(0,0,0,0),ScrollBarThickness=0,
ScrollingDirection=Enum.ScrollingDirection.Y,LayoutOrder=2000,Parent=at.elements})at:Create('UIListLayout',{Padding=UDim.
new(0,7),FillDirection=Enum.FillDirection.Vertical,VerticalAlignment=Enum.VerticalAlignment.Top,HorizontalAlignment=Enum
.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Parent=at.searchPage})at:Create('UIPadding',{PaddingTop=
UDim.new(0,10),PaddingBottom=UDim.new(0,33),Parent=at.searchPage})at.searchEmpty=at:Create('TextLabel',{Name='NoResults',
Text=an.t'No results',FontFace=al.brandFont(Enum.FontWeight.Medium),TextSize=15,TextTransparency=0.6,
BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.55,0),Size=UDim2.fromOffset(200,20)
,Visible=false,ZIndex=3,Parent=at.main},{TextColor3='ContentColor',FontFace='Font'})at.searchPill=at:Create('Frame',{Name=
'SearchBar',AnchorPoint=Vector2.new(0.5,0),Position=UDim2.new(0.5,0,0,66),Size=UDim2.new(1,-35,0,35),BackgroundColor3=
Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=10,BackgroundTransparency=1,Visible=false,Parent=at.main})at:Create(
'UICorner',{CornerRadius=UDim.new(1,0),Parent=at.searchPill})at.searchStroke=at:Create('UIStroke',{Color=Color3.fromRGB(255
,255,255),Thickness=1,Transparency=1,Parent=at.searchPill})at.searchShadow=at:Create('UIShadow',{BlurRadius=UDim.new(0,20),
Color=Color3.fromRGB(255,255,255),ZIndex=-1,Transparency=1,Parent=at.searchPill})at.searchIcon=at:Create('ImageLabel',{
Image='rbxassetid://'..tostring(am.icons.search),AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,15,0.5,1),Size=
UDim2.fromOffset(16,16),BackgroundTransparency=1,ZIndex=10,ImageTransparency=1,Parent=at.searchPill},{ImageColor3=
'ContentColor'})at.searchInput=at:Create('TextBox',{Text='',PlaceholderText=an.t'Search all pages',AnchorPoint=Vector2.
new(0,0.5),Position=UDim2.new(0,40,0.5,0),Size=UDim2.new(1,-110,0,18),BackgroundTransparency=1,TextSize=16,
TextXAlignment=Enum.TextXAlignment.Left,ClearTextOnFocus=false,ClipsDescendants=true,ZIndex=10,TextTransparency=1,Parent
=at.searchPill},{TextColor3='ContentColor',FontFace='Font',PlaceholderColor3='PlaceholderColor'})at:Connect(at.searchInput:
GetPropertyChangedSignal'Text',function()if at._searching then h(at,at.searchInput.Text)end end)at.searchAction=ao.new(at,{
name='Search',icon=am.icons.search,order=4,callback=function()ap.toggle(at)end})at.searchAction.isLit=function()return at.
_searching end end return ap end)()end,[16]=function()local aa, ab, ac=a(16)return(function(...)local ad={}ad.
__index=ad ad.__type='Section'local al,am=ac(ab.Parent.Parent.utility.moveable),ac(ab.Parent.Parent.utility.locale)
function ad.new(an,ao)ao=if typeof(ao)=='table'then ao else{}local ap=setmetatable({tab=assert(an,
'Missing argument #1 (Tab expected)'),window=an.window,name=ao.name or ao.Name or'Section',icon=ao.icon or ao.Icon},ad)
local aq=if#ap.tab.elements==0 then 0 else 13 ap.main=ap.window:Create('Frame',{Size=UDim2.new(1,-40,0,20+aq),
BorderSizePixel=0,Name=ap.name,BackgroundTransparency=1,Parent=ap.tab.tabPage})if aq>0 then ap.window:Create('UIPadding'
,{PaddingTop=UDim.new(0,aq),Parent=ap.main})end ap.window:Create('UIListLayout',{FillDirection=Enum.FillDirection.
Horizontal,Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Top,
Parent=ap.main})if ap.icon then ap.iconLabel=ap.window:Create('ImageLabel',{Image=ap.icon,Size=UDim2.fromOffset(16,16),
BorderSizePixel=0,BackgroundTransparency=1,ImageTransparency=1,Parent=ap.main},{ImageColor3='ContentColor'})end ap.title
=ap.window:Create('TextLabel',{Text=am.t(ap.name),Size=UDim2.fromOffset(0,16),BorderSizePixel=0,BackgroundTransparency=1
,TextSize=15,AutomaticSize=Enum.AutomaticSize.X,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,LayoutOrder=1,
TextTransparency=1,Parent=ap.main},{TextColor3='ContentColor',FontFace='Font'})return ap end function ad._setShown(an,ao
,ap)local aq=an.window aq:_reveal(an.title,{TextTransparency=if ao then 0.6 else 1},ap)if an.iconLabel then aq:_reveal(
an.iconLabel,{ImageTransparency=if ao then 0.65 else 1},ap)end end al(ad)return ad end)()end,[17]=function()local aa, ab, 
ac=a(17)return(function(...)local ad={}ad.__index=ad ad.__type='Slider'local al=ab.Parent.Parent.utility local
am,an,ao,ap,aq,ar=ac(al.variables),ac(al.functions),ac(al.odometer),ac(al.moveable),ac(al.locale),ac(al.HapticEngine)
local function c(as)local at=0 while as%1~=0 and at<6 do as=as*10 at+=1 end return at end local function d(as,at,au)local av=as[1]+
math.round((au-as[1])/at)*at return math.clamp(av,as[1],as[2])end local as,at,au,av=TweenInfo.new(0.45,Enum.EasingStyle.Exponential
,Enum.EasingDirection.Out),TweenInfo.new(0.3,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),TweenInfo.new(0.3,
Enum.EasingStyle.Quint,Enum.EasingDirection.Out),300 function ad.new(aw,ax)ax=if typeof(ax)=='table'then ax else{}local ay=
setmetatable({tab=assert(aw,'Missing argument #1 (Tab expected)'),window=aw.window,name=ax.name or ax.Name or'Slider',icon=ax
.icon or ax.Icon,description=ax.description or ax.Description,forgetState=ax.forgetState or ax.ForgetState or aw.forgetState,
range=ax.range or ax.Range or{0,100},increment=ax.increment or ax.Increment or 1,suffix=ax.suffix or ax.Suffix or'',callback=ax
.callback or ax.Callback or function()end,dragging=false,minimal=ax.minimal or ax.Minimal or false},ad)if ay.range[1]>ay.
range[2]then ay.range={ay.range[2],ay.range[1]}end if ay.increment<=0 then ay.increment=1 end ay.value=if(ax.value or ax.Value)
~=nil then(ax.value or ax.Value)elseif(ax.currentValue or ax.CurrentValue)~=nil then(ax.currentValue or ax.CurrentValue)else ay
.range[1]ay.value=d(ay.range,ay.increment,ay.value)ay._decimals=c(ay.increment)ay.flag=ax.flag or ax.Flag or(not ay.forgetState
and an.deriveFlagFromName(ay.name)or nil)ay.window:_registerControl(ay)ay.main=ay.window:Create('Frame',{Size=UDim2.new(1,-20
,0,65),BorderSizePixel=0,Name=ay.name,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,Parent=ay.tab.
tabPage},{BackgroundTransparency='ElementTransparency'})ay.stroke=ay.window:StyleElementBody(ay.main)ay._lastValue=ay.value
if not ay.minimal then ay:_buildLabel()end ay.track=ay.window:Create('Frame',{AnchorPoint=Vector2.new(1,0.5),Position=UDim2.
new(1,-15,0.5,0),Size=UDim2.fromOffset(222,14),BorderSizePixel=0,BackgroundTransparency=1,Parent=ay.main},{
BackgroundColor3='SliderBackground'})ay.window:Create('UICorner',{CornerRadius=UDim.new(0,13),Parent=ay.track})ay.progress=
ay.window:Create('Frame',{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.fromScale(0,0.5),Size=UDim2.fromScale(0,1),
BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=2,BackgroundTransparency=1,Parent=ay.track})ay.
window:Create('UICorner',{CornerRadius=UDim.new(0,13),Parent=ay.progress})ay.window:Create('UIGradient',{Offset=Vector2.
new(0,0.5),Rotation=2,Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0.85),NumberSequenceKeypoint.new(1,0)
},Parent=ay.progress},{Color={'SliderProgress',an.toColorSequence}})ay.progressGlow=ay.window:CreateGlow(ay.progress,
'AccentColor',20,1)ay.handle=ay.window:Create('Frame',{AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,20,0.5,0),Size=
UDim2.fromOffset(35,20),BorderSizePixel=0,ZIndex=50,BackgroundTransparency=1,Parent=ay.progress},{BackgroundColor3=
'SliderHandle'})ay.window:Create('UICorner',{CornerRadius=UDim.new(1,0),Parent=ay.handle})ay.handleGlow=ay.window:
CreateGlow(ay.handle,Color3.fromRGB(255,255,255),10,1)ay.handleStroke=ay.window:Create('UIStroke',{Transparency=1,Parent=ay.
handle},{Color='SliderStroke'})ay.interact=ay.window:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.fromScale(1,
1),Text='',TextTransparency=1,ZIndex=10,Parent=ay.track})ay.window:ConnectFor(ay,ay.main.MouseEnter,function()if not ay.
window:_interactive()then return end am.tweenService:Create(ay.track,as,{BackgroundColor3=ay.window.theme.
SliderBackgroundHover}):Play()end)ay.window:ConnectFor(ay,ay.main.MouseLeave,function()am.tweenService:Create(ay.track,as,{
BackgroundColor3=ay.window.theme.SliderBackground}):Play()end)ay.window:ConnectFor(ay,ay.interact.InputBegan,function(az)if az
.UserInputType==Enum.UserInputType.MouseButton1 or az.UserInputType==Enum.UserInputType.Touch then ar.click()ay.dragging=
true ay:_setHeld(true)ay:_updateFromMouse()if ay._dragConnection then ay._dragConnection:Disconnect()ay._dragConnection=nil
end ay._dragConnection=am.runService.RenderStepped:Connect(function()if ay.window.unloaded or not ay.dragging then if ay.
_dragConnection then ay._dragConnection:Disconnect()ay._dragConnection=nil end return end ay:_updateFromMouse()end)end end)
ay.window:ConnectFor(ay,am.userInputService.InputEnded,function(az)if(az.UserInputType==Enum.UserInputType.MouseButton1 or az
.UserInputType==Enum.UserInputType.Touch)and ay.dragging then ay.dragging=false ay:_setHeld(false)if ay._dragConnection then
ay._dragConnection:Disconnect()ay._dragConnection=nil end ay.window:_persist(ay)end end)if ay.description and not ay.minimal
then ay.descriptor=ac(ab.Parent.descriptor).new(ay.tab,{description=ay.description})end ay.window:ConnectFor(ay,ay.main:
GetPropertyChangedSignal'AbsoluteSize',function()if ay.window.animating or(ay.window.hidden and ay.window.hasShownOnce)then
return end ay:_applyLayout()end)ay:_applyLayout()if ay.minimal then ay.main.Size=UDim2.new(1,-20,0,41)ay.track.AnchorPoint=
Vector2.new(0.5,0.5)ay.track.Position=UDim2.new(0.5,0,0.5,0)ay.track.Size=UDim2.new(1,-30,0,14)end ay:_renderProgress()
return ay end function ad._buildLabel(aw)aw.container=aw.window:Create('Frame',{AnchorPoint=Vector2.new(0,0.5),Position=
UDim2.new(0,20,0.5,0),Size=UDim2.fromOffset(170,33),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=5,Parent=aw.main})aw
.containerLayout=aw.window:Create('UIListLayout',{Padding=UDim.new(0,2),VerticalAlignment=Enum.VerticalAlignment.Center,
SortOrder=Enum.SortOrder.LayoutOrder,Parent=aw.container})aw.titleContainer=aw.window:Create('Frame',{Size=UDim2.new(1,0,0,
16),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=5,Parent=aw.container})aw.window:Create('UIListLayout',{Padding=UDim
.new(0,5),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,SortOrder=Enum.
SortOrder.LayoutOrder,Parent=aw.titleContainer})aw.titleFlex=aw.window:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.None,
Parent=aw.titleContainer})if aw.icon then aw.iconLabel=aw.window:Create('ImageLabel',{Image=aw.icon,Size=UDim2.fromOffset(16,
16),BorderSizePixel=0,BackgroundTransparency=1,ZIndex=5,ImageTransparency=1,Parent=aw.titleContainer},{ImageColor3=
'ContentColor'})end aw.title=aw.window:Create('TextLabel',{Text=aq.t(aw.name),Size=UDim2.new(1,0,0,16),BorderSizePixel=0,
BackgroundTransparency=1,TextSize=16,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,
RichText=true,LayoutOrder=1,ZIndex=5,TextTransparency=1,Parent=aw.titleContainer},{TextColor3='ContentColor',FontFace=
'Font'})aw.window:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Shrink,Parent=aw.title})aw.valueHost=aw.window:Create(
'Frame',{Size=UDim2.new(1,0,0,16),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=6,LayoutOrder=1,Parent=aw.container})
aw.valueOdo=ao.new(aw.window,aw.valueHost,{textSize=15,alignment=Enum.HorizontalAlignment.Left,transparency=1,duration=0.28
})aw.valueOdo:snap(aw:_format(aw.value))end function ad._setMainHeight(aw,ax)if aw._widthManaged then aw.main.Size=UDim2.new(aw.
main.Size.X.Scale,aw.main.Size.X.Offset,0,ax)else aw.main.Size=UDim2.new(1,-20,0,ax)end end function ad._applyLayout(aw)if aw.
minimal then return end local ax=aw.main.AbsoluteSize.X local ay=if ax>0 and ax<av then'narrow'else'wide'if aw._layoutMode==ay
then return end aw._layoutMode=ay if ay=='narrow'then aw:_setMainHeight(70)aw.container.AnchorPoint=Vector2.new(0,0)aw.
container.Position=UDim2.new(0,20,0,14)aw.container.Size=UDim2.new(1,-40,0,16)aw.containerLayout.FillDirection=Enum.
FillDirection.Horizontal aw.titleFlex.FlexMode=Enum.UIFlexMode.Fill aw.valueHost.AutomaticSize=Enum.AutomaticSize.X aw.
valueHost.Size=UDim2.new(0,0,0,16)aw.track.AnchorPoint=Vector2.new(0.5,1)aw.track.Position=UDim2.new(0.5,0,1,-14)aw.track.
Size=UDim2.new(1,-30,0,14)else aw:_setMainHeight(65)aw.container.AnchorPoint=Vector2.new(0,0.5)aw.container.Position=UDim2.
new(0,20,0.5,0)aw.container.Size=UDim2.new(0,170,0,33)aw.containerLayout.FillDirection=Enum.FillDirection.Vertical aw.
titleFlex.FlexMode=Enum.UIFlexMode.None aw.valueHost.AutomaticSize=Enum.AutomaticSize.None aw.valueHost.Size=UDim2.new(1,0
,0,16)aw.track.AnchorPoint=Vector2.new(1,0.5)aw.track.Position=UDim2.new(1,-15,0.5,0)aw.track.Size=UDim2.new(0,222,0,14)end
end function ad._format(aw,ax)local ay=string.format('%.'..aw._decimals..'f',ax)if aw.suffix~=''then return ay..' '..aw.suffix
end return ay end function ad._renderProgress(aw,ax)local ay=aw.range[2]-aw.range[1]local az=if ay~=0 then math.clamp((aw.value-aw
.range[1])/ay,0,1)else 0 local aA=UDim2.fromScale(az,1)if ax then am.tweenService:Create(aw.progress,ax,{Size=aA}):Play()else aw
.progress.Size=aA end end function ad._updateFromMouse(aw)local ax=aw.track.AbsoluteSize.X if ax<=0 then return end local ay=
math.clamp((am.userInputService:GetMouseLocation().X-aw.track.AbsolutePosition.X)/ax,0,1)local az=d(aw.range,aw.increment,aw.
range[1]+ay*(aw.range[2]-aw.range[1]))if az~=aw.value then aw.value=az if aw.valueOdo then aw.valueOdo:snap(aw:_format(az))end aw.
_lastValue=az aw:_renderProgress(au)aw:_fireCallback(az)end end function ad._setHeld(aw,ax)if ax then am.tweenService:Create(aw.
handle,at,{Size=UDim2.fromOffset(41,22),BackgroundTransparency=0.7}):Play()am.tweenService:Create(aw.handleStroke,at,{
Transparency=0.6}):Play()else am.tweenService:Create(aw.handle,at,{Size=UDim2.fromOffset(35,20),BackgroundTransparency=0})
:Play()am.tweenService:Create(aw.handleStroke,at,{Transparency=1}):Play()end end function ad._fireCallback(aw,ax)aw.window:
_runGuarded(aw,aw.callback,ax)end function ad.Set(aw,ax,ay)ax=d(aw.range,aw.increment,ax)aw.value=ax if aw.valueOdo then aw.valueOdo:
to(aw:_format(ax),ax>=(aw._lastValue or ax))end aw._lastValue=ax aw:_renderProgress(as)if not ay then aw:_fireCallback(ax)aw.window:
_persist(aw)end end local aw=TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out,0,false,0.35)function
ad._setShown(ax,ay,az)local aA=ax.window if ay then aA:_revealCommon(ax,az)aA:_reveal(ax.track,{BackgroundTransparency=0},az)aA:
_reveal(ax.progress,{BackgroundTransparency=0},az)aA:_reveal(ax.handle,{BackgroundTransparency=0},az)if ax.valueOdo then ax.
valueOdo:reveal(0.3,az)end aA:_reveal(ax.progressGlow,{Transparency=math.max(0.55,aA.theme.AccentGlow)},az,aw)aA:_reveal(ax.
handleGlow,{Transparency=0.8},az,aw)else aA:_hideCommon(ax,az)aA:_reveal(ax.track,{BackgroundTransparency=1},az)aA:_reveal(ax.
progress,{BackgroundTransparency=1},az)aA:_reveal(ax.handle,{BackgroundTransparency=1},az)if ax.valueOdo then ax.valueOdo:
reveal(1,az)end aA:_reveal(ax.progressGlow,{Transparency=1},az,aw)aA:_reveal(ax.handleGlow,{Transparency=1},az,aw)end end
function ad._refreshTheme(ax)am.tweenService:Create(ax.progressGlow,TweenInfo.new(0.5,Enum.EasingStyle.Quint,Enum.
EasingDirection.Out),{Transparency=math.max(0.55,ax.window.theme.AccentGlow)}):Play()end function ad._minWidth(ax)if ax.
minimal then return 100 end local ay=40 if ax.icon then ay+=22 end ay+=an.textWidth(ax.window.theme.Font,16,ax.name)ay+=12 ay+=
an.textWidth(ax.window.theme.Font,15,ax:_format(ax.value))return math.max(ay,160)end ap(ad)return ad end)()end,[18]=function
()local aa, ab, ac=a(18)return(function(...)local ad={}ad.__index=ad ad.__type='Statistic'local al=ab.Parent.
Parent.utility local am,an,ao,ap,aq,ar,as=ac(al.variables),ac(al.functions),ac(al.odometer),ac(al.moveable),ac(al.
constants),ac(al.locale),ac(al.log)local at,au,av,aw=aq.statAccents,NumberSequence.new{NumberSequenceKeypoint.new(0,0.85),
NumberSequenceKeypoint.new(1,0)},41,TweenInfo.new(0.6,Enum.EasingStyle.Exponential)local function h(ax)return ax.fill.
Keypoints[1].Value end local function i(ax)if ax>0 then return string.format('+%.1f%%',ax)elseif ax<0 then return string.
format('%.1f%%',ax)else return'0%'end end local function j(ax)if typeof(ax)~='number'then return tostring(ax)end local ay=
tostring(math.floor(math.abs(ax)))local az=ay:reverse():gsub('%d%d%d','%0,'):reverse()if az:sub(1,1)==','then az=az:sub(2)end
return if ax<0 then'-'..az else az end local function k(ax)if ax>0 then return'+'..j(math.round(ax))elseif ax<0 then return j(
math.round(ax))else return'0'end end function ad.new(ax,ay)ay=if typeof(ay)=='table'then ay else{}local az=setmetatable({tab=
assert(ax,'Missing argument #1 (Tab expected)'),window=ax.window,name=ay.name or ay.Name or'Statistic',icon=ay.icon or ay.Icon
,description=ay.description or ay.Description,value=if(ay.value or ay.Value)~=nil then(ay.value or ay.Value)else 0,_hasValue=(
ay.value or ay.Value)~=nil,numberEasing=if(ay.numberEasing~=nil)then ay.numberEasing elseif ay.NumberEasing~=nil then ay.
NumberEasing else true,changeMode=ay.changeMode or ay.ChangeMode or'percentage',changeBaseline=ay.changeBaseline or ay.
ChangeBaseline or'previous',prefix=ay.prefix or ay.Prefix or'',suffix=ay.suffix or ay.Suffix or'',compact=ay.compact or ay.
Compact or ax.compact or false,display=(ay.display or ay.Display or'value'),_initialValue=if(ay.value or ay.Value)~=nil then(
ay.value or ay.Value)else nil,_lastChange=0},ad)if az.compact then az:_buildCompact()else az:_buildFull()end if az.description
then if az.compact then as.warn(`Volcano: a compact stat has no room for a description, ignoring it on '{az.name}'.`)else az
.descriptor=ac(ab.Parent.descriptor).new(az.tab,{description=az.description})end end return az end function ad._buildFull(ax
)local ay=ax.window ax.main=ay:Create('Frame',{Size=UDim2.new(1,-20,0,90),BorderSizePixel=0,Name=ax.name,ZIndex=5,
BackgroundTransparency=1,Parent=ax.tab.tabPage},{BackgroundColor3='StatBackground',BackgroundTransparency=
'ElementTransparency'})ay:Create('UICorner',{Parent=ax.main},{CornerRadius='ElementCornerRadius'})ax.stroke=ay:Create(
'UIStroke',{Transparency=1,Color=Color3.fromRGB(255,255,255),Parent=ax.main},{Transparency='ElementStrokeTransparency'})ax
.strokeGradient=ay:Create('UIGradient',{Rotation=2,Offset=Vector2.new(0,0.5),Color=at.neutral.stroke,Transparency=au,Parent
=ax.stroke})ax.titleContainer=ay:Create('Frame',{Size=UDim2.new(1,-40,0,32),Position=UDim2.fromOffset(20,15),
BorderSizePixel=0,LayoutOrder=-1,BackgroundTransparency=1,ZIndex=5,Parent=ax.main})ax.gradientContainer=ay:Create('Frame',{
Size=UDim2.fromScale(1,1),Position=UDim2.fromOffset(0,0),BorderSizePixel=0,BackgroundTransparency=1,BackgroundColor3=
Color3.fromRGB(255,255,255),ZIndex=5,Parent=ax.main})ax.glow=ay:CreateGlow(ax.main,h(at.neutral),13,1)ax.title=ay:Create(
'TextLabel',{Text=ar.t(ax.name),Size=UDim2.fromOffset(300,19),BorderSizePixel=0,BackgroundTransparency=1,TextSize=19,
TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,LayoutOrder=1,ZIndex=10,TextTransparency=1,Parent=ax.
titleContainer},{TextColor3='ContentColor',FontFace='TitleFont'})ax.mainGradient=ay:Create('UIGradient',{Rotation=2,Offset
=Vector2.new(0,0.5),Color=at.neutral.fill,Transparency=au,Parent=ax.gradientContainer})ay:Create('UICorner',{Parent=ax.
gradientContainer},{CornerRadius='ElementCornerRadius'})if ax.icon then ax.iconLabel=ay:Create('ImageLabel',{Image=ax.icon,
Size=UDim2.fromOffset(32,32),BorderSizePixel=0,BackgroundTransparency=1,ZIndex=10,ImageTransparency=1,Parent=ax.
titleContainer},{ImageColor3='ContentColor'})end ax.containerLayout=ay:Create('UIListLayout',{Padding=UDim.new(0,8),
FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.
HorizontalAlignment.Left,SortOrder=Enum.SortOrder.LayoutOrder,Parent=ax.titleContainer})ax.valueHost=ay:Create('Frame',{
AnchorPoint=Vector2.new(0,1),Position=UDim2.new(0,20,1,-15),Size=UDim2.fromOffset(200,20),BackgroundTransparency=1,
BorderSizePixel=0,ZIndex=10,Parent=ax.main})ax.changeHost=ay:Create('Frame',{AnchorPoint=Vector2.new(1,1),Position=UDim2.
new(1,-20,1,-15),Size=UDim2.fromOffset(200,15),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=10,Parent=ax.main})ax.
valueOdo=ao.new(ay,ax.valueHost,{textSize=20,alignment=Enum.HorizontalAlignment.Left,transparency=1})ax.valueOdo:snap(ax:
_formatValue(ax.value))ax.changeOdo=ao.new(ay,ax.changeHost,{textSize=15,alignment=Enum.HorizontalAlignment.Right,
transparency=1})ax.changeOdo:snap(ax:_formatChange(0))ax._accentGradients={ax.strokeGradient,ax.mainGradient}end function ad.
_buildCompact(ax)local ay,az=ax.window,ax.tab.compact or false ax.main=ay:Create('Frame',{Name=ax.name,Size=if az then UDim2.
fromOffset(0,av)else UDim2.new(1,-20,0,av),AutomaticSize=if az then Enum.AutomaticSize.X else Enum.AutomaticSize.None,
ClipsDescendants=true,BorderSizePixel=0,ZIndex=5,BackgroundTransparency=1,Parent=ax.tab.tabPage},{BackgroundColor3=
'StatBackground',BackgroundTransparency='ElementTransparency'})ay:Create('UICorner',{Parent=ax.main},{CornerRadius=
'ElementCornerRadius'})ax.stroke=ay:Create('UIStroke',{Transparency=1,Color=Color3.fromRGB(255,255,255),Parent=ax.main},{
Transparency='ElementStrokeTransparency'})ax.strokeGradient=ay:Create('UIGradient',{Rotation=2,Offset=Vector2.new(0,0.5),
Color=at.neutral.stroke,Transparency=au,Parent=ax.stroke})if az then ay:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Fill,
Parent=ax.main})end ay:Create('UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.
VerticalAlignment.Center,HorizontalFlex=Enum.UIFlexAlignment.Fill,Parent=ax.main})ax.card=ay:Create('Frame',{AutomaticSize=
Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,av),BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=5,
BackgroundTransparency=1,Parent=ax.main})ay:Create('UICorner',{Parent=ax.card},{CornerRadius='ElementCornerRadius'})ax.
mainGradient=ay:Create('UIGradient',{Rotation=2,Offset=Vector2.new(0,0.5),Color=at.neutral.fill,Transparency=au,Parent=ax.
card})ay:Create('UIPadding',{PaddingLeft=UDim.new(0,15),PaddingRight=UDim.new(0,15),Parent=ax.card})ay:Create(
'UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,
HorizontalFlex=Enum.UIFlexAlignment.SpaceBetween,Padding=UDim.new(0,10),Parent=ax.card})ax.titleContainer=ay:Create('Frame'
,{AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,16),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=
0,ZIndex=6,Parent=ax.card})ay:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Shrink,Parent=ax.titleContainer})ay:Create(
'UIListLayout',{Padding=UDim.new(0,6),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.
VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Left,SortOrder=Enum.SortOrder.LayoutOrder,Parent=ax
.titleContainer})if ax.icon then ax.iconLabel=ay:Create('ImageLabel',{Image=ax.icon,Size=UDim2.fromOffset(20,20),
BorderSizePixel=0,BackgroundTransparency=1,LayoutOrder=0,ZIndex=6,ImageTransparency=1,Parent=ax.titleContainer},{
ImageColor3='ContentColor'})end ax.title=ay:Create('TextLabel',{Text=ar.t(ax.name),Size=UDim2.fromOffset(0,16),AutomaticSize
=Enum.AutomaticSize.X,BorderSizePixel=0,BackgroundTransparency=1,TextSize=16,TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,LayoutOrder=1,ZIndex=6,TextTransparency=1,Parent=ax.titleContainer},{TextColor3=
'ContentColor',FontFace='Font'})ay:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Shrink,Parent=ax.title})ax.readoutHost=ay:
Create('Frame',{AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,18),BackgroundTransparency=1,BorderSizePixel=
0,LayoutOrder=1,ZIndex=6,Parent=ax.card})ax.readoutOdo=ao.new(ay,ax.readoutHost,{textSize=17,alignment=Enum.
HorizontalAlignment.Right,transparency=1})ax.readoutOdo:snap(ax.display=='change'and ax:_formatChange(0)or ax:_formatValue(ax
.value))ax._accentGradients={ax.strokeGradient,ax.mainGradient}end function ad._setAccent(ax,ay,az)local aA=at[ay]ax.
strokeGradient.Color=aA.stroke ax.mainGradient.Color=aA.fill if ax.glow then ax.glow.Color=h(aA)end local aB,aC=if az==1 then 14
elseif az==-1 then-10 else 2,if az==1 then Vector2.new(0.04,0.5)elseif az==-1 then Vector2.new(-4E-2,0.5)else Vector2.new(0
,0.5)for aD,aE in ax._accentGradients do am.tweenService:Create(aE,aw,{Rotation=aB,Offset=aC}):Play()end end function ad.
_formatValue(ax,ay)return ax.prefix..j(ay)..ax.suffix end function ad._formatChange(ax,ay)if ax.changeMode=='absolute'then
return k(ay)else return i(ay)end end function ad._showValue(ax,ay,az,aA,aB)if ax.numberEasing and not aB then ay:to(ax:
_formatValue(az),az>=aA)else ay:snap(ax:_formatValue(az))end end function ad._updateFullReadouts(ax,ay,az,aA,aB,aC,aD)ax:_showValue(ax.
valueOdo,ay,az,aD)if aC then ax.changeOdo:snap(aC)ax._lastChange=0 elseif ax.numberEasing and not aB then ax.changeOdo:to(ax:
_formatChange(aA),aA>=ax._lastChange)ax._lastChange=aA else ax.changeOdo:snap(ax:_formatChange(aA or 0))ax._lastChange=aA or 0 end
end function ad._updateCompactReadout(ax,ay,az,aA,aB,aC,aD)if ax.display=='change'then if aC then ax.readoutOdo:snap(aC)ax.
_lastChange=0 elseif ax.numberEasing and not aB then ax.readoutOdo:to(ax:_formatChange(aA),aA>=ax._lastChange)ax._lastChange=aA
else ax.readoutOdo:snap(ax:_formatChange(aA or 0))ax._lastChange=aA or 0 end else ax:_showValue(ax.readoutOdo,ay,az,aD)end end
function ad.Set(ax,ay)assert(typeof(ay)=='number','Statistic:Set() - value must be a number, got '..typeof(ay))local az,aA=ax.
value,not ax._hasValue ax.value=ay ax._hasValue=true if aA then ax._initialValue=ay end local aB=if ax.changeBaseline=='initial'
then ax._initialValue else az local aC,aD,aE,aF,aG=aA or aB==ay if aC then aD=0 aF='neutral'aG=0 elseif aB==0 then local aH,aI=if ay>0
then'+'else'-',if ax.changeMode=='percentage'then'\u{221e}%'else'\u{221e}'aE=aH..aI aF=if ay>0 then'positive'else'negative'aG=
if ay>0 then 1 else-1 elseif ax.changeMode=='percentage'then aD=((ay-aB)/math.abs(aB))*100 aG=if aD>0 then 1 elseif aD<0 then-1
else 0 aF=if aG==1 then'positive'elseif aG==-1 then'negative'else'neutral'else aD=ay-aB aG=if aD>0 then 1 elseif aD<0 then-1 else
0 aF=if aG==1 then'positive'elseif aG==-1 then'negative'else'neutral'end ax:_setAccent(aF,aG)if ax.compact then ax:
_updateCompactReadout(ay,az,aD,aC,aE,aA)else ax:_updateFullReadouts(ay,az,aD,aC,aE,aA)end end function ad.ResetBaseline(ax,ay)local az,aA
,aB=ax.value,not ax._hasValue,if typeof(ay)=='number'then ay else ax.value ax._initialValue=aB ax.value=aB ax._hasValue=true ax.
_lastChange=0 if ax.compact then if ax.display=='change'then ax.readoutOdo:snap(ax:_formatChange(0))else ax:_showValue(ax.
readoutOdo,aB,az,aA)end else ax.changeOdo:snap(ax:_formatChange(0))ax:_showValue(ax.valueOdo,aB,az,aA)end ax:_setAccent('neutral',0
)end function ad._setShown(ax,ay,az)local aA=ax.window if ax.compact then aA:_reveal(ax.main,{BackgroundTransparency=if ay then(ax
.window.theme.ElementTransparency or 0)else 1},az)aA:_reveal(ax.stroke,{Transparency=if ay then ax.window.theme.
ElementStrokeTransparency else 1},az)aA:_reveal(ax.card,{BackgroundTransparency=if ay then 0 else 1},az)aA:_reveal(ax.title,{
TextTransparency=if ay then 0 else 1},az)if ax.iconLabel then aA:_reveal(ax.iconLabel,{ImageTransparency=if ay then 0 else 1},
az)end ax.readoutOdo:reveal(if ay then 0 else 1,az)return end if ay then aA:_revealCommon(ax,az)aA:_reveal(ax.gradientContainer,{
BackgroundTransparency=0},az)aA:_reveal(ax.glow,{Transparency=0.82},az)ax.valueOdo:reveal(0,az)ax.changeOdo:reveal(0,az)else aA:
_hideCommon(ax,az)aA:_reveal(ax.gradientContainer,{BackgroundTransparency=1},az)aA:_reveal(ax.glow,{Transparency=1},az)ax.
valueOdo:reveal(1,az)ax.changeOdo:reveal(1,az)end end function ad._minWidth(ax)local ay=40 if ax.icon then ay+=26 end ay+=an.
textWidth(ax.window.theme.Font,16,ar.resolve(ax.name))local az=if ax.display=='change'then ax:_formatChange(0)else ax:
_formatValue(ax.value)ay+=an.textWidth(ax.window.theme.Font,17,az)return ay end ap(ad)return ad end)()end,[19]=function()local
aa, ab, ac=a(19)return(function(...)local ad={}ad.__index=ad ad.__type='Tab'local al=ab.Parent.Parent.
utility local am,an,ao,ap,aq,ar=ac(al.variables),ac(al.functions),ac(al.locale),ac(al.ordering),ac(al.HapticEngine),ac(ab
.Parent.search)local function c(as,at)for au,av in at do if av.__type=='Group'then c(as,av.elements)else as:_unregisterControl(av)
end if av.connections then for aw,ax in av.connections do as:Disconnect(ax)end av.connections=nil end if av._dragConnection then
av._dragConnection:Disconnect()av._dragConnection=nil end if av._outsideClickConn then as:Disconnect(av._outsideClickConn)av.
_outsideClickConn=nil end end end local as,at,au={selected={background=0,stroke=0,content=0},hover={background=0.4,stroke=
0.3,content=0.3},unselected={background=0.8,stroke=0.65,content=0.5},hidden={background=1,stroke=1,content=1}},TweenInfo
.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection
.Out)function ad.new(av,aw)aw=if typeof(aw)=='table'then aw else{}local ax=setmetatable({window=assert(av,
'Missing argument #1 (Window expected)'),name=aw.name or aw.Name,icon=aw.icon or aw.Icon,neglectSelector=aw.neglectSelector
or aw.NeglectSelector or false,customOrder=aw.customOrder or aw.CustomOrder or 0,forgetState=aw.forgetState or aw.ForgetState
or false,elements={},connections={}},ad)assert(ax.name or ax.icon,'A tab needs a name or an icon.')if not ax.
neglectSelector then ax.topbarItem=ax.window:Create('Frame',{Name=ax.name,Size=UDim2.fromOffset(0,34),AutomaticSize=Enum.
AutomaticSize.X,BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0,BackgroundTransparency=1,Visible=false,
LayoutOrder=ax.customOrder or 0,Parent=ax.window.tabList})ax.topbarItemInteract=ax.window:Create('TextButton',{Active=false,
BackgroundTransparency=1,Size=UDim2.fromScale(1,1),BorderSizePixel=0,Text='',TextTransparency=1,Parent=ax.topbarItem})ax.
window:Create('UICorner',{Parent=ax.topbarItem},{CornerRadius='PillCornerRadius'})ax.topbarItemGradient=ax.window:Create(
'UIGradient',{Rotation=90,Parent=ax.topbarItem},{Color={'TabBackground',an.toColorSequence}})ax.topbarItemStroke=ax.window:
Create('UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Color=Color3.fromRGB(255,255,255),Transparency=1,Parent=ax
.topbarItem})ax.topbarItemStrokeGradient=ax.window:Create('UIGradient',{Rotation=90,Parent=ax.topbarItemStroke},{Color={
'TabStroke',an.toColorSequence}})ax.topbarItemContainer=ax.window:Create('Frame',{Size=UDim2.fromOffset(0,34),
AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,BorderSizePixel=0,Parent=ax.topbarItem})ax.window:Create(
'UIPadding',{PaddingLeft=UDim.new(0,13),PaddingRight=UDim.new(0,14),Parent=ax.topbarItemContainer})ax.topbarItemLayout=ax.
window:Create('UIListLayout',{Padding=UDim.new(0,6),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.
VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Parent
=ax.topbarItemContainer})if ax.icon then ax.topbarItemIcon=ax.window:Create('ImageLabel',{Image=ax.icon,Size=UDim2.
fromOffset(16,16),BorderSizePixel=0,BackgroundTransparency=1,ImageTransparency=1,Parent=ax.topbarItemContainer},{
ImageColor3='TabColor'})end if ax.name then ax.topbarItemTitle=ax.window:Create('TextLabel',{Text=ao.t(ax.name),Size=UDim2.
fromOffset(0,16),BorderSizePixel=0,BackgroundTransparency=1,TextSize=16,AutomaticSize=Enum.AutomaticSize.XY,
TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,LayoutOrder=1,TextTransparency=1,Parent=ax.topbarItemContainer},
{TextColor3='TabColor',FontFace='Font'})end end ax.tabPage=ax.window:Create('ScrollingFrame',{Name=ax.name,Size=UDim2.new(1
,-20,1,0),Position=UDim2.new(0.5,0,0,68),AnchorPoint=Vector2.new(0.5,0.5),BorderSizePixel=0,BackgroundTransparency=1,
AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.new(0,0,0,0),ScrollBarThickness=0,ScrollingDirection=Enum.
ScrollingDirection.Y,LayoutOrder=ax.customOrder or 0,Parent=ax.window.elements})ax.tabPageLayout=ax.window:Create(
'UIListLayout',{Padding=UDim.new(0,7),FillDirection=Enum.FillDirection.Vertical,VerticalAlignment=Enum.VerticalAlignment
.Top,HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Parent=ax.tabPage})ax.window
:Create('UIPadding',{PaddingTop=UDim.new(0,10),PaddingBottom=UDim.new(0,33),Parent=ax.tabPage})if not ax.neglectSelector
then table.insert(ax.connections,ax.window:Connect(ax.topbarItemInteract.MouseButton1Click,function()aq.click()ax:Select()
end))table.insert(ax.connections,ax.window:Connect(ax.topbarItemInteract.MouseEnter,function()if not ax.window:_interactive(
)then return end if ax.window.selectedTab~=ax then ax:_applyVisual('hover',au)ax:_spinGradients()end end))table.insert(ax.
connections,ax.window:Connect(ax.topbarItemInteract.MouseLeave,function()if ax.window.selectedTab~=ax then ax:_applyVisual(
'unselected',au)end end))end return ax end function ad._applyVisual(av,aw,ax)if av.neglectSelector or not av.topbarItem then
return end local ay=as[aw]if not ay then return end if ax then am.tweenService:Create(av.topbarItem,ax,{BackgroundTransparency=
ay.background}):Play()am.tweenService:Create(av.topbarItemStroke,ax,{Transparency=ay.stroke}):Play()if av.topbarItemIcon then
am.tweenService:Create(av.topbarItemIcon,ax,{ImageTransparency=ay.content}):Play()end if av.topbarItemTitle then am.
tweenService:Create(av.topbarItemTitle,ax,{TextTransparency=ay.content}):Play()end else av.topbarItem.BackgroundTransparency
=ay.background av.topbarItemStroke.Transparency=ay.stroke if av.topbarItemIcon then av.topbarItemIcon.ImageTransparency=ay.
content end if av.topbarItemTitle then av.topbarItemTitle.TextTransparency=ay.content end end end function ad.
_spinGradients(av)if av.neglectSelector then return end local aw=TweenInfo.new(0.7,Enum.EasingStyle.Quint,Enum.
EasingDirection.Out)for ax,ay in{av.topbarItemGradient,av.topbarItemStrokeGradient}do ay.Rotation=-270 am.tweenService:
Create(ay,aw,{Rotation=90}):Play()end end function ad.Select(av,aw)if av.window._searching then ar.close(av.window,{showTabs=
true,jumpTo=false})end av.window.selectedTab=av av.window:_jumpTo(av.tabPage)local ax=aw or not av.window:_interactive()if not
av.neglectSelector and not ax then av:_applyVisual('selected',at)end for ay,az in av.window.tabs do if az~=av.window.selectedTab
then az:Deselect(ax)end end if av~=av.window.rfSettings and av.window.settingsAction and not ax then am.tweenService:Create(av.
window.settingsAction.iconLabel,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{ImageTransparency=
0.6}):Play()end end function ad.Deselect(av,aw)if not av.neglectSelector and not aw then av:_applyVisual('unselected',at)end
end function ad._register(av,aw)table.insert(av.elements,aw)ap(aw,#av.elements*10)av.window:_restoreLate(aw)if not av.window.
hidden then aw:_setShown(true,true)end return aw end function ad.CreateButton(av,aw)return av:_register(ac(ab.Parent.button).
new(av,aw))end function ad.CreateToggle(av,aw)return av:_register(ac(ab.Parent.toggle).new(av,aw))end function ad.CreateSwitch(
av,aw)return av:CreateToggle(aw)end function ad.CreateSection(av,aw)return av:_register(ac(ab.Parent.section).new(av,aw))end
function ad.CreateStat(av,aw)return av:_register(ac(ab.Parent.stat).new(av,aw))end function ad.CreateSlider(av,aw)return av:
_register(ac(ab.Parent.slider).new(av,aw))end function ad.CreateDropdown(av,aw)return av:_register(ac(ab.Parent.dropdown).
new(av,aw))end function ad.CreateInput(av,aw)return av:_register(ac(ab.Parent.input).new(av,aw))end function ad.CreateKeybind(av
,aw)return av:_register(ac(ab.Parent.keybind).new(av,aw))end function ad.CreateColorPicker(av,aw)return av:_register(ac(ab.
Parent.colorpicker).new(av,aw))end function ad.CreateGroup(av,aw)return av:_register(ac(ab.Parent.group).new(av,aw))end
function ad._moveElement(av,aw,ax)local ay=table.find(av.elements,aw)if not ay then return end table.remove(av.elements,ay)ax=math
.clamp(ax,1,#av.elements+1)table.insert(av.elements,ax,aw)for az,aA in av.elements do ap(aA,az*10)end end function ad.Remove(av)
local aw=av.window if aw._searching then ar.close(aw,{showTabs=true,jumpTo=aw.selectedTab and aw.selectedTab.tabPage})end local
ax=table.find(aw.tabs,av)if ax then table.remove(aw.tabs,ax)end if aw.selectedTab==av then aw.selectedTab=nil for ay,az in ipairs(aw
.tabs)do if not az.neglectSelector then az:Select()break end end end c(aw,av.elements)for ay,az in av.connections do aw:
Disconnect(az)end av.connections={}if av.topbarItem then aw:DestroySubtree(av.topbarItem)end if av.tabPage then aw:
DestroySubtree(av.tabPage)end av.topbarItem=nil av.tabPage=nil av.elements={}end return ad end)()end,[20]=function()local aa, 
ab, ac=a(20)return(function(...)local ad={}ad.__index=ad ad.__type='Tag'local al=ab.Parent.Parent.utility local
am,an,ao,ap,aq=ac(al.variables),ac(al.functions),ac(al.image),Color3.fromRGB(255,175,15),TweenInfo.new(0.25,Enum.
EasingStyle.Quint,Enum.EasingDirection.Out)function ad.new(ar,as)as=if typeof(as)=='table'then as else{}local at=setmetatable(
{window=assert(ar,'Missing argument #1 (Window expected)'),text=as.text or as.Text or as.title or as.Title,icon=as.icon or as.
Icon,color=as.color or as.Color or ap},ad)assert(at.icon or(at.text and at.text~=''),'A Tag requires an icon, text, or both.'
)at.main=at.window:Create('Frame',{Name='Tag',Size=UDim2.fromOffset(10,24),AutomaticSize=Enum.AutomaticSize.X,
BackgroundColor3=at.color,BorderSizePixel=0,LayoutOrder=as.order or as.Order or 0,BackgroundTransparency=1,Parent=at.window.
tagContainer})at.window:Create('UICorner',{CornerRadius=UDim.new(1,0),Parent=at.main})at.window:Create('UIPadding',{
PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10),Parent=at.main})at.window:Create('UIListLayout',{Padding=UDim.new(0
,5),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,SortOrder=Enum.SortOrder
.LayoutOrder,Parent=at.main})local au=an.contrastColor(at.color)at.iconLabel=at.window:Create('ImageLabel',{Name='Icon',Image
=at.icon or'',ImageColor3=au,Size=UDim2.fromOffset(16,16),BackgroundTransparency=1,Visible=at.icon~=nil,ZIndex=5,
ImageTransparency=1,Parent=at.main})at.title=at.window:Create('TextLabel',{Name='Title',AnchorPoint=Vector2.new(0,0.5),Size
=UDim2.fromOffset(10,15),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,Text=at.text or'',TextColor3=au,
TextSize=15,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,RichText=true,Visible=at.text~=nil and at.text~='',
LayoutOrder=1,ZIndex=5,TextTransparency=1,Parent=at.main},{FontFace='Font'})at.window.tagContainer.Visible=true if not at.
window.hidden then at:_setShown(true,aq)end return at end function ad._setShown(ar,as,at)local au,av=if as then 0 else 1,if
typeof(at)=='TweenInfo'then at elseif at then aq else nil if av then am.tweenService:Create(ar.main,av,{BackgroundTransparency
=au}):Play()am.tweenService:Create(ar.iconLabel,av,{ImageTransparency=au}):Play()am.tweenService:Create(ar.title,av,{
TextTransparency=au}):Play()else ar.main.BackgroundTransparency=au ar.iconLabel.ImageTransparency=au ar.title.TextTransparency
=au end end function ad.SetColor(ar,as)ar.color=as local at=an.contrastColor(as)am.tweenService:Create(ar.main,aq,{
BackgroundColor3=as}):Play()am.tweenService:Create(ar.iconLabel,aq,{ImageColor3=at}):Play()am.tweenService:Create(ar.title,
aq,{TextColor3=at}):Play()end function ad.SetText(ar,as)ar.text=as ar.title.Text=as or''ar.title.Visible=as~=nil and as~=''end
function ad.SetIcon(ar,as)ar.icon=as ao.assign(ar.iconLabel,'Image',as)ar.iconLabel.Visible=as~=nil end function ad.Set(ar,as)if as
.color or as.Color then ar:SetColor(as.color or as.Color)end if as.text or as.Text or as.title or as.Title then ar:SetText(as.text
or as.Text or as.title or as.Title)end if as.icon~=nil or as.Icon~=nil then ar:SetIcon(as.icon or as.Icon)end end function ad.
Remove(ar)ar.window:DestroySubtree(ar.main)local as=table.find(ar.window.tags,ar)if as then table.remove(ar.window.tags,as)end if
#ar.window.tags==0 then ar.window.tagContainer.Visible=false end end return ad end)()end,[21]=function()local aa, ab, ac=a(
21)return(function(...)local ad={}ad.__index=ad ad.__type='Toast'local al=ab.Parent.Parent.utility local am,an,
ao,ap,aq,ar,as,at,au,av,aw,ax,ay,az,aA,aB,aC,aD,aE,aF,aG,aH,aI=ac(al.variables),ac(al.functions),ac(al.constants),ac(al.image),ac(al.
HapticEngine),TweenInfo.new(0.6,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),TweenInfo.new(0.6,Enum.
EasingStyle.Exponential,Enum.EasingDirection.Out),TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.
Out),TweenInfo.new(0.3,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),TweenInfo.new(0.6,Enum.EasingStyle.
Exponential,Enum.EasingDirection.Out),24,32,18,18,10,28,12,8,140,320,UDim2.new(0.5,0,0.5,-180),UDim2.new(0.5,0,0.5,180),
UDim2.new(0.5,0,0.5,0)local function t(aJ)return math.clamp(#aJ*0.05+3,3,8)end local function u(aJ)if type(aJ)=='number'then
return'rbxassetid://'..tostring(aJ)end return aJ end function ad.new(aJ,aK,aL)aK=if typeof(aK)=='table'then aK else{}local aM=
setmetatable({window=assert(aJ,'Missing argument #1 (Window expected)'),title=aK.title or aK.Title or'',subtitle=aK.subtitle
or aK.Subtitle,icon=aK.icon or aK.Icon,avatar=aK.avatar or aK.Avatar,minWidth=aK.minWidth or aK.MinWidth,subtitleAbove=aK.
subtitleAbove or aK.SubtitleAbove or false,position=aK.position or'Top',_hovered=false,_dismissed=false},ad)aM.duration=aK.
duration or aK.Duration or t(aM.title..(aM.subtitle or''))local aN=aM.avatar~=nil and aM.avatar~=0 local aO=aN or(aM.icon~=nil
and aM.icon~=0 and aM.icon~='')aM._iconImage=if aN then ap.avatar(aM.avatar,function(aP)if aM.iconLabel and not aM._dismissed
and aM.main.Parent then ap.assign(aM.iconLabel,'Image',aP)end end)elseif aO then u(aM.icon)else nil aM._iconSize=if aN then ax
else aw aM._leftPad=if aN then aA else ay aM._rightPad=if aN then aB else az aM._minWidth=math.max(aM.minWidth or 0,aE)local aP=aM.
subtitle~=nil and aM.subtitle~=''aM.main=aM.window:Create('Frame',{Name='Toast',BackgroundTransparency=1,Size=UDim2.new(0,0
,0,0),BorderSizePixel=0,ZIndex=ao.zIndex.toast,Parent=aL or aM.window.toasts})aM.window:Create('UIPadding',{PaddingTop=UDim
.new(0,aD),Parent=aM.main})aM.body=aM.window:Create('Frame',{BackgroundColor3=Color3.fromRGB(255,255,255),Size=UDim2.new(1,0
,1,0),Position=if aM.position=='Bottom'then aH else aG,AnchorPoint=Vector2.new(0.5,0.5),Active=true,BorderSizePixel=0,
ZIndex=ao.zIndex.toast,BackgroundTransparency=1,Parent=aM.main})aM.window:Create('UIGradient',{Rotation=270,Offset=Vector2
.new(0,-0.1),Parent=aM.body},{Color={'WindowColor',an.toColorSequence}})aM.window:Create('UICorner',{CornerRadius=UDim.
new(1,0),Parent=aM.body})aM.stroke=aM.window:Create('UIStroke',{Transparency=1,Parent=aM.body},{Color='SurfaceStroke'})aM.
shadow=aM.window:CreateGlow(aM.body,'ShadowColor',20,1)aM.window:Create('UIPadding',{PaddingLeft=UDim.new(0,aM._leftPad),
PaddingRight=UDim.new(0,aM._rightPad),Parent=aM.body})aM.window:Create('UIListLayout',{FillDirection=Enum.FillDirection.
Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Left,SortOrder=
Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,aC),Parent=aM.body})if aO then aM.iconLabel=aM.window:Create('ImageLabel',{
Image=aM._iconImage,Size=UDim2.fromOffset(aM._iconSize,aM._iconSize),BackgroundColor3=Color3.fromRGB(255,255,255),
BorderSizePixel=0,LayoutOrder=1,ZIndex=ao.zIndex.toastContent,BackgroundTransparency=1,ImageTransparency=1,Parent=aM.body
},if aN then nil else{ImageColor3='ContentColor'})aM.window:Create('UICorner',{CornerRadius=UDim.new(1,0),Parent=aM.
iconLabel})end aM.container=aM.window:Create('Frame',{AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,aP and 32
or 16),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=2,ZIndex=ao.zIndex.toastContent,Parent=aM.body})aM.window:
Create('UIListLayout',{FillDirection=Enum.FillDirection.Vertical,VerticalAlignment=Enum.VerticalAlignment.Center,
SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,1),Parent=aM.container})aM.titleLabel=aM.window:Create('TextLabel',
{Text=aM.title,AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,16),BackgroundTransparency=1,TextSize=16,
TextXAlignment=Enum.TextXAlignment.Left,LayoutOrder=if aM.subtitleAbove then 2 else 1,ZIndex=ao.zIndex.toastContent,
TextTransparency=1,Parent=aM.container},{TextColor3='ContentColor',FontFace='TitleFont'})if aP then aM.subtitleLabel=aM.
window:Create('TextLabel',{Text=aM.subtitle,AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,14),
BackgroundTransparency=1,TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,LayoutOrder=if aM.subtitleAbove then 1 else
2,ZIndex=ao.zIndex.toastContent,TextTransparency=1,Parent=aM.container},{TextColor3='ContentColor',FontFace='Font'})end aM
.window._toastCount=(aM.window._toastCount or 0)+1 aM.main.LayoutOrder=-aM.window._toastCount aM._connections={aM.window:
Connect(aM.body.MouseEnter,function()aM._hovered=true end),aM.window:Connect(aM.body.MouseLeave,function()aM._hovered=false
end),aM.window:Connect(aM.body.InputBegan,function(aQ)if aQ.UserInputType==Enum.UserInputType.MouseButton1 or aQ.
UserInputType==Enum.UserInputType.Touch then aM:_dismiss()end end)}task.spawn(function()aM:_show()end)return aM end
function ad._measure(aJ)local aK,aL=an.textWidth(aJ.window.theme.TitleFont,16,aJ.title),if aJ.subtitleLabel then an.textWidth(
aJ.window.theme.Font,14,aJ.subtitle)else 0 local aM,aN=math.max(aK,aL),if aJ.iconLabel then aJ._leftPad+aJ._iconSize+aC else aJ.
_leftPad local aO,aP=math.clamp(aN+aM+aJ._rightPad,aJ._minWidth,aF),if aJ.subtitleLabel then 31 else 16 local aQ=math.max(aP,if aJ.
iconLabel then aJ._iconSize else 0)+18 return aO,aQ end function ad._show(aJ)if not aJ.main.Parent then return end aq.notify(
)local aK,aL=aJ:_measure()aJ.main.Size=UDim2.new(0,aK,0,0)am.tweenService:Create(aJ.main,as,{Size=UDim2.new(0,aK,0,aL+aD)}):Play()
am.tweenService:Create(aJ.body,ar,{Position=aI}):Play()am.tweenService:Create(aJ.body,at,{BackgroundTransparency=0}):Play()am
.tweenService:Create(aJ.stroke,at,{Transparency=0.9}):Play()am.tweenService:Create(aJ.shadow,au,{Transparency=0.6}):Play()am
.tweenService:Create(aJ.titleLabel,au,{TextTransparency=0}):Play()task.wait(0.05)if aJ._dismissed or not aJ.main.Parent then
return end if aJ.iconLabel then am.tweenService:Create(aJ.iconLabel,au,{BackgroundTransparency=0.95}):Play()am.tweenService
:Create(aJ.iconLabel,au,{ImageTransparency=0}):Play()end task.wait(0.05)if aJ._dismissed or not aJ.main.Parent then return
end if aJ.subtitleLabel then am.tweenService:Create(aJ.subtitleLabel,au,{TextTransparency=0.5}):Play()end local aM=0 while aM
<aJ.duration and not aJ._dismissed and aJ.main.Parent do local aN=task.wait()if not aJ._hovered then aM+=aN end end aJ:_dismiss(
)end function ad._dismiss(aJ)if aJ._dismissed then return end aJ._dismissed=true if not aJ.main.Parent then return end am.
tweenService:Create(aJ.body,at,{BackgroundTransparency=1}):Play()am.tweenService:Create(aJ.stroke,at,{Transparency=1}):Play(
)am.tweenService:Create(aJ.shadow,au,{Transparency=1}):Play()am.tweenService:Create(aJ.titleLabel,au,{TextTransparency=1}):
Play()if aJ.subtitleLabel then am.tweenService:Create(aJ.subtitleLabel,au,{TextTransparency=1}):Play()end if aJ.iconLabel
then am.tweenService:Create(aJ.iconLabel,au,{ImageTransparency=1,BackgroundTransparency=1}):Play()end am.tweenService:
Create(aJ.body,av,{Size=UDim2.new(1,-60,1,0)}):Play()local aK=am.tweenService:Create(aJ.main,av,{Size=UDim2.new(0,aJ.main.Size
.X.Offset,0,0)})aK:Play()aK.Completed:Wait()if not aJ.main.Parent then return end for aL,aM in aJ._connections do aJ.window:
Disconnect(aM)end aJ.window:DestroySubtree(aJ.main)end return ad end)()end,[22]=function()local aa, ab, ac=a(22)
return(function(...)local ad={}ad.__index=ad ad.__type='Toggle'local al=ab.Parent.Parent.utility local am,an,ao,ap,aq=
ac(al.variables),ac(al.functions),ac(al.moveable),ac(al.locale),ac(al.HapticEngine)function ad.new(ar,as)as=if typeof(as)==
'table'then as else{}local at=setmetatable({tab=assert(ar,'Missing argument #1 (Tab expected)'),window=ar.window,name=as.name
or as.Name or'Switch',icon=as.icon or as.Icon,description=as.description or as.Description,forgetState=as.forgetState or as.
ForgetState or ar.forgetState,compact=ar.compact or false,flag=as.flag or as.Flag or(not(as.forgetState or as.ForgetState or ar
.forgetState)and an.deriveFlagFromName(as.name or as.Name or'Switch')or nil),callback=as.callback or as.Callback or function
()end,value=if(as.value or as.Value)~=nil then(as.value or as.Value)else false},ad)at.window:_registerControl(at)if at.compact
then at:_buildCompact()else at:_buildFull()end if at.description and not at.compact then at.descriptor=ac(ab.Parent.
descriptor).new(at.tab,{description=at.description})end return at end function ad._buildSwitch(ar,as)local at=ar.window ar.
functionContainer=at:Create('Frame',{BorderSizePixel=0,Size=UDim2.fromOffset(50,21),BackgroundTransparency=1,Parent=as},{
BackgroundColor3='ToggleTrack'})at:Create('UICorner',{CornerRadius=UDim.new(0,15),Parent=ar.functionContainer})ar.
containerStroke=at:Create('UIStroke',{Transparency=1,Parent=ar.functionContainer},{Color='SurfaceStroke'})ar.indicator=at:
Create('Frame',{BorderSizePixel=0,Size=UDim2.fromOffset(25,17),Position=ar.value and UDim2.new(1,-28,0.5,0)or UDim2.new(1
,-47,0.5,0),AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=ar.value and ar.window.theme.AccentColor or ar.window.theme.
ToggleKnobOff,BackgroundTransparency=1,Parent=ar.functionContainer})at:Create('UICorner',{CornerRadius=UDim.new(1,0),
Parent=ar.indicator})ar.indicatorStroke=at:Create('UIStroke',{Color=ar.value and ar.window.theme.AccentStroke or Color3.
fromRGB(255,255,255),Transparency=1,Parent=ar.indicator})ar.indicatorGlow=at:CreateGlow(ar.indicator,'AccentColor',20,1)ar.
overlay=at:Create('Frame',{BorderSizePixel=0,Size=UDim2.fromScale(1,1),Position=UDim2.fromScale(0,0),AnchorPoint=Vector2.
new(0,0),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,Parent=ar.functionContainer},{Visible=
'DarkToggleOverlay'})at:Create('UICorner',{CornerRadius=UDim.new(0,15),Parent=ar.overlay})ar.overlayGradient=at:Create(
'UIGradient',{Rotation=90,Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(30,30,30)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(30,30,30))},Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(1,0.35)},Parent=ar.overlay})return ar.functionContainer end function ad._performToggle(ar)aq.
click()ar.value=not ar.value ar:_animateIndicator()ar.window:_runGuarded(ar,ar.callback,ar.value)ar.window:_persist(ar)end
function ad._buildFull(ar)local as=ar.window ar.main=as:Create('Frame',{Size=UDim2.new(1,-20,0,41),BorderSizePixel=0,Name=ar.
name,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,Parent=ar.tab.tabPage},{BackgroundTransparency
='ElementTransparency'})ar.stroke=as:StyleElementBody(ar.main)ar.hoverOverlay=as:CreateHoverOverlay(ar.main)ar.container=as:
Create('Frame',{BorderSizePixel=0,Parent=ar.main,Size=UDim2.new(0,170,0,16),Position=UDim2.new(0,20,0.5,0),AnchorPoint=
Vector2.new(0,0.5),BackgroundTransparency=1})ar.containerLayout=as:Create('UIListLayout',{Padding=UDim.new(0,5),
FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.
HorizontalAlignment.Left,Parent=ar.container})if ar.icon then ar.iconLabel=as:Create('ImageLabel',{Image=ar.icon,Size=UDim2.
fromOffset(16,16),BorderSizePixel=0,BackgroundTransparency=1,ImageTransparency=1,Parent=ar.container},{ImageColor3=
'ContentColor'})end ar.title=as:Create('TextLabel',{Text=ap.t(ar.name),Size=UDim2.fromOffset(250,16),BorderSizePixel=0,
BackgroundTransparency=1,TextSize=16,AutomaticSize=Enum.AutomaticSize.X,TextXAlignment=Enum.TextXAlignment.Left,
TextWrapped=true,LayoutOrder=1,TextTransparency=1,Parent=ar.container},{TextColor3='ContentColor',FontFace='Font'})ar.
interact=as:Create('TextButton',{BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),BorderSizePixel=0,Position=UDim2.
fromScale(1,0.5),AnchorPoint=Vector2.new(1,0.5),TextTransparency=1,ZIndex=10,Parent=ar.main})ar:_buildSwitch(ar.main)ar.
functionContainer.Position=UDim2.new(1,-15,0,20)ar.functionContainer.AnchorPoint=Vector2.new(1,0.5)ar.window:
_wireElementHover(ar)ar.window:ConnectFor(ar,ar.interact.MouseButton1Click,function()am.tweenService:Create(ar.stroke,
TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Transparency=1}):Play()am.tweenService:Create(ar.
main,TweenInfo.new(0.6,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(1,-26,0,41)}):Play()ar:
_performToggle()task.wait(0.11)am.tweenService:Create(ar.main,TweenInfo.new(0.25,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),{Size=UDim2.new(1,-20,0,41)}):Play()am.tweenService:Create(ar.stroke,TweenInfo.new(0.25,Enum.
EasingStyle.Quint,Enum.EasingDirection.Out),{Transparency=ar.window.theme.ElementStrokeTransparency}):Play()end)end
function ad._buildCompact(ar)local as=ar.window ar.main,ar.stroke,ar.interact=as:_buildCompactRow(ar.tab,ar.name,10)ar.
hoverOverlay=ar.interact as:Create('UIPadding',{PaddingLeft=UDim.new(0,15),PaddingRight=UDim.new(0,15),Parent=ar.interact})
as:Create('UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,
HorizontalFlex=Enum.UIFlexAlignment.SpaceBetween,Padding=UDim.new(0,10),Parent=ar.interact})ar.container=as:Create('Frame',
{AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,16),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=0
,Parent=ar.interact})as:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Shrink,Parent=ar.container})as:Create('UIListLayout',{
Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,
HorizontalAlignment=Enum.HorizontalAlignment.Left,Parent=ar.container})if ar.icon then ar.iconLabel=as:Create('ImageLabel',{
Image=ar.icon,Size=UDim2.fromOffset(16,16),BorderSizePixel=0,BackgroundTransparency=1,LayoutOrder=0,ImageTransparency=1,
Parent=ar.container},{ImageColor3='ContentColor'})end ar.title=as:Create('TextLabel',{Text=ap.t(ar.name),Size=UDim2.
fromOffset(0,16),AutomaticSize=Enum.AutomaticSize.X,BorderSizePixel=0,BackgroundTransparency=1,TextSize=16,
TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,LayoutOrder=1,TextTransparency=1,Parent=ar.
container},{TextColor3='ContentColor',FontFace='Font'})as:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Shrink,Parent=ar.
title})ar:_buildSwitch(ar.interact)ar.functionContainer.LayoutOrder=1 ar.window:_wireElementHover(ar)ar.window:ConnectFor(ar,ar.
interact.MouseButton1Click,function()am.tweenService:Create(ar.stroke,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.
EasingDirection.Out),{Transparency=1}):Play()ar:_performToggle()task.wait(0.11)am.tweenService:Create(ar.stroke,TweenInfo.
new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Transparency=ar.window.theme.ElementStrokeTransparency}):Play(
)end)end function ad._animateIndicator(ar)local as=TweenInfo.new(0.6,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out
)if ar.indicatorGlow then am.tweenService:Create(ar.indicatorGlow,as,{Transparency=ar.value and ar.window.theme.AccentGlow or
1}):Play()end if ar.value then am.tweenService:Create(ar.indicator,as,{Position=UDim2.new(1,-28,0.5,0),BackgroundColor3=ar.
window.theme.AccentColor,BackgroundTransparency=0}):Play()am.tweenService:Create(ar.indicatorStroke,as,{Color=ar.window.
theme.AccentStroke,Transparency=0}):Play()else am.tweenService:Create(ar.indicator,as,{Position=UDim2.new(1,-47,0.5,0),
BackgroundColor3=ar.window.theme.ToggleKnobOff,BackgroundTransparency=ar.window.theme.ToggleKnobOffTransparency}):Play()am
.tweenService:Create(ar.indicatorStroke,as,{Color=Color3.fromRGB(255,255,255),Transparency=0.7}):Play()end end local ar,as=
TweenInfo.new(0.6,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),TweenInfo.new(0.6,Enum.EasingStyle.Exponential,
Enum.EasingDirection.Out,0,false,0.35)function ad._setShown(at,au,av)local aw=at.window if au then aw:_revealCommon(at,av)aw:
_reveal(at.indicator,{BackgroundColor3=at.value and aw.theme.AccentColor or aw.theme.ToggleKnobOff,BackgroundTransparency=at.
value and 0 or aw.theme.ToggleKnobOffTransparency},av,ar)aw:_reveal(at.indicatorStroke,{Color=at.value and aw.theme.
AccentStroke or Color3.fromRGB(255,255,255),Transparency=at.value and 0 or 0.7},av,ar)aw:_reveal(at.indicatorGlow,{
Transparency=at.value and aw.theme.AccentGlow or 1},av,as)aw:_reveal(at.overlay,{BackgroundTransparency=0},av,ar)aw:_reveal(at.
containerStroke,{Transparency=0.85},av,ar)aw:_reveal(at.functionContainer,{BackgroundTransparency=aw.theme.
ToggleTrackTransparency},av,ar)else aw:_hideCommon(at,av)aw:_reveal(at.indicator,{BackgroundTransparency=1},av,ar)aw:_reveal(at.
indicatorStroke,{Transparency=1},av,ar)aw:_reveal(at.indicatorGlow,{Transparency=1},av,as)aw:_reveal(at.overlay,{
BackgroundTransparency=1},av,ar)aw:_reveal(at.containerStroke,{Transparency=1},av,ar)aw:_reveal(at.functionContainer,{
BackgroundTransparency=1},av,ar)end end function ad._refreshTheme(at)local au,av,aw=at.window.theme,TweenInfo.new(0.5,Enum.
EasingStyle.Quint,Enum.EasingDirection.Out),am.tweenService aw:Create(at.functionContainer,av,{BackgroundTransparency=au.
ToggleTrackTransparency}):Play()aw:Create(at.indicator,av,{BackgroundColor3=at.value and au.AccentColor or au.ToggleKnobOff,
BackgroundTransparency=at.value and 0 or au.ToggleKnobOffTransparency}):Play()aw:Create(at.indicatorStroke,av,{Color=at.value
and au.AccentStroke or Color3.fromRGB(255,255,255)}):Play()if at.indicatorGlow then aw:Create(at.indicatorGlow,av,{
Transparency=at.value and au.AccentGlow or 1}):Play()end end function ad._minWidth(at)local au=90 if at.icon then au+=21 end au
+=an.textWidth(at.window.theme.Font,16,at.name)return au end ao(ad)function ad.Set(at,au,av)local aw=at.value~=au at.value=au if aw
then at:_animateIndicator()end if not av then at.window:_runGuarded(at,at.callback,at.value)at.window:_persist(at)end end return
ad end)()end,[23]=function()local aa, ab, ac=a(23)return(function(...)local ad=ab.Parent.Parent.utility local al,
am,an,ao,ap,aq,ar,as,at,au,av,aw,ax=ac(ad.image),ac(ad.functions),ac(ad.persistence),ac(ad.constants),ac(ad.locale),ac(ad.log),
ac(ad.HapticEngine),ac(ad.windowSizing),ac(ab.Parent.chrome),ac(ab.Parent.search),ac(ad.variables),ab.Parent.Parent.
themes,{}ax.__index=ax local ay,az,aA,aB,aC,aD=TweenInfo.new(0.45,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),UDim2.
fromOffset(185,50),UDim2.new(0.5,0,0,20),320,41,2 local function o():UDim2 local aE=av.workspace.CurrentCamera return as.
fit(aE and aE.ViewportSize)end local aE={WindowColor=true,ElementGradient=true,ElementStrokeGradient=true,TabBackground=
true,TabStroke=true,SliderProgress=true}local function q(aF,aG)if aE[aF]and typeof(aG)=='Color3'then return ColorSequence.
new(aG)end return aG end local function r(aF)return if typeof(aF)=='ColorSequence'then aF.Keypoints[1].Value else aF end local
function s(aF,aG)local aH=0.299*aF.R+0.587*aF.G+0.114*aF.B local aI=if aH>0.5 then Color3.new(0,0,0)else Color3.new(1,1,1)return
aF:Lerp(aI,aG)end local function t(aF,aG)if aG.ElementGradient then local aH=r(aF.ElementGradient)if aG.ElementStroke==nil then aF
.ElementStroke=s(aH,0.28)end if aG.ElementStrokeGradient==nil then aF.ElementStrokeGradient=ColorSequence.new(s(aH,0.4))end
if aG.ElementStrokeHover==nil then aF.ElementStrokeHover=s(aH,0.52)end end if aG.TabBackground and aG.TabStroke==nil then aF.
TabStroke=ColorSequence.new(s(r(aF.TabBackground),0.4))end end local function u(aF)if typeof(aF)=='table'then return aF
elseif typeof(aF)=='string'then local aG=aw:FindFirstChild(string.lower(aF))if aG then return ac(aG)end aq.warn(
"Volcano: unknown theme '"..aF.."', using default")elseif aF~=nil then aq.warn
[[Volcano: invalid theme (expected a built-in name or a theme table), using default]]end return ac(aw.default)end local
function v(aF)local aG,aH=table.clone(ac(aw.default)),u(aF)for aI,aJ in aH do aG[aI]=q(aI,aJ)end if typeof(aF)=='table'then t(aG,aH)end
local aI=if typeof(aF)=='table'then aF else nil if not(aI and(aI.Font or aI.font))then aG.Font=av.brandFont(Enum.FontWeight.
Medium)end if not(aI and(aI.TitleFont or aI.titleFont))then aG.TitleFont=av.brandFont(Enum.FontWeight.SemiBold)end return aG
end function ax.new(aF)aF=if typeof(aF)=='table'then aF else{}if aF.translations or aF.Translations then ap.register(aF.
translations or aF.Translations)end if aF.translator or aF.Translator then ap.translator=aF.translator or aF.Translator end
ap.setActive(aF.locale or aF.Locale or ap.detect())local aG=aF.fallbackFont or aF.FallbackFont if aG then av.setFallbackFont(aG)
end local aH=setmetatable({name=aF.name or aF.Name or'Volcano Window',subheading=aF.subtitle or aF.Subtitle,size=o(),
instances={},connections={},icon=aF.icon or aF.Icon,showName=aF.showName or aF.ShowName or'Volcano',showIcon=aF.showIcon or aF
.ShowIcon or ao.icons.volcano,themeProperties={},localeProperties={},tabs={},tags={},selectedTab=nil,theme=v(aF.theme or
aF.Theme),controls={},configuration=(function()local aH=aF.configuration or aF.Configuration if not aH then return{}end
return{autoSave=aH.autoSave or aH.AutoSave,autoLoad=aH.autoLoad or aH.AutoLoad,fileName=aH.fileName or aH.FileName,
customFolder=aH.customFolder or aH.CustomFolder}end)()},ax)aH.Flags=setmetatable({},{__index=function(aI,aJ)local aK=aH.controls
[aJ]return aK and aK.value end,__newindex=function(aI,aJ,aK)local aL=aH.controls[aJ]if not aL then aq.warn("Volcano: no flag '"..
tostring(aJ).."' to set")return end aL:Set(aK)end,__iter=function()local aI return function()local aJ aI,aJ=next(aH.controls,aI)
if aI then return aI,aJ.value end return nil end end})aH.screenGui=aH:Create('ScreenGui',{Name=av.httpService:GenerateGUID(
false),IgnoreGuiInset=true,ResetOnSpawn=false,Enabled=true,DisplayOrder=ao.displayOrder.window,ZIndexBehavior=Enum.
ZIndexBehavior.Global,Parent=av.guiContainer})aH.main=aH:Create('Frame',{BackgroundColor3=Color3.fromRGB(255,255,255),Name=
aH.name,ZIndex=1,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.fromOffset((aH.size.X.Offset-
50),0),BackgroundTransparency=1,Visible=false,Parent=aH.screenGui})aH.drag=ac(ab.Parent.drag).new(aH)aH.windowCorner=aH:
Create('UICorner',{Parent=aH.main},{CornerRadius='CornerRoundness'})aH.windowStroke=aH:Create('UIStroke',{Transparency=1,
Parent=aH.main},{Color='SurfaceStroke'})aH.windowGradient=aH:Create('UIGradient',{Rotation=270,Offset=Vector2.new(0,-0.1),
Parent=aH.main},{Color={'WindowColor',am.toColorSequence}})aH.bottomFade=aH:Create('Frame',{BackgroundColor3=Color3.
fromRGB(255,255,255),BorderSizePixel=0,AnchorPoint=Vector2.new(0,1),Position=UDim2.fromScale(0,1),Size=UDim2.new(1,0,-9.3E-2
,100),ZIndex=ao.zIndex.bottomFade,BackgroundTransparency=1,Parent=aH.main})aH:Create('UICorner',{Parent=aH.bottomFade
},{CornerRadius='CornerRoundness'})aH.bottomFadeGradient=aH:Create('UIGradient',{Rotation=270,Offset=Vector2.new(0,0.2),
Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.4414,0),
NumberSequenceKeypoint.new(0.7007,0.631),NumberSequenceKeypoint.new(1,1)},Parent=aH.bottomFade},{Color={'WindowColor',
function(aI)return ColorSequence.new(am.toColorSequence(aI).Keypoints[1].Value)end}})aH.topbar=aH:Create('Frame',{
BackgroundTransparency=1,Size=UDim2.new(1,0,0,66),Active=true,Parent=aH.main})aH.topContainer=aH:Create('Frame',{Size=UDim2
.new(0,300,0,24),Position=UDim2.new(0,25,0.5,0),AutomaticSize=Enum.AutomaticSize.Y,AnchorPoint=Vector2.new(0,0.5),
BackgroundTransparency=1,Parent=aH.topbar})aH.topContainerLayout=aH:Create('UIListLayout',{Padding=UDim.new(0,8),
FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.
HorizontalAlignment.Left,SortOrder=Enum.SortOrder.LayoutOrder,Parent=aH.topContainer})aH.titleContainer=aH:Create('Frame',{
Size=UDim2.fromOffset(50,24),Position=UDim2.new(0,25,0.5,0),AutomaticSize=Enum.AutomaticSize.XY,AnchorPoint=Vector2.new(
0,0.5),BackgroundTransparency=1,LayoutOrder=1,Parent=aH.topContainer})aH.titleContainerLayout=aH:Create('UIListLayout',{
Padding=UDim.new(0,3),FillDirection=Enum.FillDirection.Vertical,VerticalAlignment=Enum.VerticalAlignment.Center,
SortOrder=Enum.SortOrder.LayoutOrder,Parent=aH.titleContainer})if aH.name then aH.title=aH:Create('TextLabel',{Text=ap.t(aH.
name),FontFace=av.brandFont(Enum.FontWeight.Medium),Size=UDim2.fromOffset(50,20),AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,TextSize=20,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,TextTransparency=1,Parent=
aH.titleContainer},{FontFace='Font',TextColor3='TitlingColor'})end if aH.icon then aH.topbarIcon=aH:Create('ImageLabel',{
Image=aH.icon,BackgroundTransparency=1,Size=UDim2.fromOffset(32,32),ImageTransparency=1,Parent=aH.topContainer},{
ImageColor3='TitlingColor'})end if aH.subheading then aH.subtitle=aH:Create('TextLabel',{Text=ap.t(aH.subheading),Size=UDim2
.fromOffset(50,12),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,TextSize=12,TextXAlignment=Enum.
TextXAlignment.Left,TextWrapped=true,TextTransparency=1,Parent=aH.titleContainer},{TextColor3='TitlingColor',FontFace=
'Font'})end aH.tagContainer=aH:Create('Frame',{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,25,0.5,0),Size=UDim2.
fromOffset(50,24),AutomaticSize=Enum.AutomaticSize.XY,BackgroundTransparency=1,LayoutOrder=2,Visible=false,Parent=aH.
topContainer})aH.tagContainerLayout=aH:Create('UIListLayout',{Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.
Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Parent=aH.tagContainer})aH
.windowShadow=aH:CreateGlow(aH.main,'ShadowColor',20,1)aH.elements=aH:Create('Frame',{Size=UDim2.new(1,0,1,-106),Position=
UDim2.fromScale(0.5,1),AnchorPoint=Vector2.new(0.5,1),BackgroundTransparency=1,ClipsDescendants=true,Parent=aH.main})aH.
elementsLayout=aH:Create('UIPageLayout',{Padding=UDim.new(0,0),FillDirection=Enum.FillDirection.Horizontal,
VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=Enum.
SortOrder.LayoutOrder,ScrollWheelInputEnabled=false,GamepadInputEnabled=false,TouchInputEnabled=false,EasingStyle=Enum.
EasingStyle.Exponential,TweenTime=0.4,Parent=aH.elements})aH.tabList=aH:Create('ScrollingFrame',{Name='Tabs',Active=true,
Size=UDim2.new(1,0,0,38),Position=UDim2.new(0.5,0,0,65),AnchorPoint=Vector2.new(0.5,0),BackgroundTransparency=1,
AutomaticCanvasSize=Enum.AutomaticSize.X,CanvasSize=UDim2.new(0,0,0,0),ScrollBarThickness=0,ScrollBarImageTransparency=1
,ScrollingDirection=Enum.ScrollingDirection.X,Parent=aH.main})aH.tabListLayout=aH:Create('UIListLayout',{Padding=UDim.new(0
,7),FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum
.HorizontalAlignment.Left,SortOrder=Enum.SortOrder.LayoutOrder,Parent=aH.tabList})aH:Create('UIPadding',{PaddingLeft=UDim.
new(0,22),PaddingRight=UDim.new(0,10),Parent=aH.tabList})aH.actionContainer=aH:Create('Frame',{AnchorPoint=Vector2.new(1,
0.5),AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,24),Position=UDim2.new(1,-20,0.5,0),
BackgroundTransparency=1,Parent=aH.topbar})aH.actionsListLayout=aH:Create('UIListLayout',{Padding=UDim.new(0,5),
FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.
HorizontalAlignment.Right,SortOrder=Enum.SortOrder.LayoutOrder,Parent=aH.actionContainer})aH.rfSettings=aH:CreateTab{name=
'Volcano Settings',customOrder=1000,neglectSelector=true,forgetState=true}ac(ab.Parent.action).new(aH,{name='Close',icon=
ao.icons.close,order=1,callback=function()aH:ToggleHide()end})aH.minimiseAction=ac(ab.Parent.action).new(aH,{name=
'Minimise',icon=ao.icons.minimise,order=2,callback=function()aH:ToggleMinimise()end})aH.settingsAction=ac(ab.Parent.action
).new(aH,{name='Settings',icon=ao.icons.settings,order=3,linkedTab=aH.rfSettings,callback=function()aH.rfSettings:Select()
end})au.build(aH)aH.unloaded=false aH.minimised=false aH.hidden=true aH.animating=false aH._revealing=false aH.hasShownOnce=
false aH.settings={toggleKeybind=Enum.KeyCode.K,mouseOverride=true,keepOnScreen=true,welcomeToast=true,haptics=false}aH:
LoadSettings()ar.setContainer(aH.screenGui)ar.setEnabled(aH.settings.haptics)at.buildCollapsedFace(aH)aH:_bindKeybind()aH:
_bindMouseOverride()aH:_bindTopbarDrag()aH:_watchViewport()aH:_buildSettingsUI()aH:_syncLiveAnimation()return aH end function
ax._syncLiveAnimation(aF)if not aF.theme.LiveAnimation then aF._liveAnimating=false return end if aF._liveAnimating then
return end aF._liveAnimating=true aF._liveGeneration=(aF._liveGeneration or 0)+1 local aG=aF._liveGeneration task.spawn(
function()local aH,aI=true,TweenInfo.new(10,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)while aF._liveGeneration==aG and
aF._liveAnimating and not aF.unloaded do local aJ=av.tweenService:Create(aF.windowGradient,aI,{Offset=Vector2.new(if aH then
0.4 else-0.2,0),Rotation=(if aH then 220 else 280)})aF._liveTween=aJ aJ:Play()aJ.Completed:Wait()aH=not aH end if aF.
_liveGeneration==aG then aF._liveAnimating=false aF._liveTween=nil end end)end function ax.ChangeTheme(aF,aG)local aH=if
typeof(aG)=='table'then aG else v(aG)for aI,aJ in aH do aF.theme[aI]=q(aI,aJ)end if typeof(aG)=='table'then t(aF.theme,aH)end for aI,aJ
in aF.themeProperties do for aK,aL in aJ do local aM=if typeof(aL)=='table'then aL[2](aF.theme[aL[1] ])else aF.theme[aL]if typeof(aM
)=='Color3'or typeof(aM)=='number'then av.tweenService:Create(aI,TweenInfo.new(0.5,Enum.EasingStyle.Quint,Enum.
EasingDirection.Out),{[aK]=aM}):Play()else aI[aK]=aM end end end if aF.hidden then aF._themeRefreshPending=true else aF:
_refreshElementThemes()end aF:_syncLiveAnimation()end function ax._refreshElementThemes(aF)for aG,aH in aF.tabs do for aI,aJ in
aH.elements do if aJ._refreshTheme then aJ:_refreshTheme()end end end end function ax.CreateTab(aF,aG)local aH=ac(ab.Parent.tab
).new(aF,aG)table.insert(aF.tabs,aH)if not aH.neglectSelector then local aI=true for aJ,aK in aF.tabs do if aK~=aH and not aK.
neglectSelector then aI=false break end end if aI then aH:Select(true)end if not aF.hidden and not aF.minimised then aH.
topbarItem.Visible=true aH:_applyVisual(if aF.selectedTab==aH then'selected'else'unselected',TweenInfo.new(0.4,Enum.
EasingStyle.Quint,Enum.EasingDirection.Out))end end return aH end function ax.CreateTag(aF,aG)local aH=ac(ab.Parent.tag).new(
aF,aG)table.insert(aF.tags,aH)return aH end function ax._registerControl(aF,aG)if not aG.flag or aG.flag==''or aG.forgetState then
return end local aH=aG.flag if aF.controls[aH]then local aI=2 while aF.controls[aH..aI]do aI+=1 end aH=aH..aI aq.warn(
"Volcano: duplicate config flag '"..aG.flag.."', saving this one as '"..aH..
"'. Set a unique flag to keep it stable across sessions.")end aG.flag=aH aF.controls[aH]=aG return aH end function ax.
_restoreLate(aF,aG)if not aF._loadedConfig or not aG.flag or aG.forgetState then return end local aH=aF._loading aF._loading=
true an.applyTo(aG,aF._loadedConfig[aG.flag])aF._loading=aH end function ax._persist(aF,aG)if aG.flag and not aG.forgetState and aF
.configuration.autoSave and not aF._loading then task.spawn(aF.Save,aF)end end function ax._unregisterControl(aF,aG)if aG.flag
and aF.controls[aG.flag]==aG then aF.controls[aG.flag]=nil end end function ax._keybindUsing(aF,aG,aH)if typeof(aG)~='EnumItem'or
aG==Enum.KeyCode.Unknown then return nil end for aI,aJ in aF.tabs do for aK,aL in aJ.elements do if aL~=aH and aL.__type==
'Keybind'and aL.value==aG then return aL end end end return nil end function ax.Notify(aF,aG)if aF.unloaded then return end if
not aF.notifications then aF.notifications=aF:Create('Frame',{Name='Notifications',Size=UDim2.new(0,300,0,800),Position=
UDim2.new(1,-20,1,-20),AnchorPoint=Vector2.new(1,1),BackgroundTransparency=1,Parent=aF.screenGui})aF:Create('UIListLayout'
,{FillDirection=Enum.FillDirection.Vertical,VerticalAlignment=Enum.VerticalAlignment.Bottom,HorizontalAlignment=Enum.
HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,0),Parent=aF.notifications})end return
ac(ab.Parent.notification).new(aF,aG)end function ax.Toast(aF,aG)if aF.unloaded then return end local aH=(aG or{}).position or
'Top'local aI=aH=='Top'local aJ=if aI then'_toastsTop'else'_toastsBottom'local aK=aF[aJ]if not aK then aK=aF:Create('Frame',{Name=
'Toasts',Size=UDim2.new(0,aB,1,-24),Position=if aI then UDim2.new(0.5,0,0,12)else UDim2.new(0.5,0,1,-12),AnchorPoint=if aI
then Vector2.new(0.5,0)else Vector2.new(0.5,1),BackgroundTransparency=1,ZIndex=ao.zIndex.toast,Parent=aF.screenGui})aF:
Create('UIListLayout',{FillDirection=Enum.FillDirection.Vertical,VerticalAlignment=if aI then Enum.VerticalAlignment.Top
else Enum.VerticalAlignment.Bottom,HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.
LayoutOrder,Padding=UDim.new(0,0),Parent=aK})aF[aJ]=aK end return ac(ab.Parent.toast).new(aF,aG,aK)end function ax.Popup(aF,aG)if
aF.unloaded then return end return ac(ab.Parent.popup).new(aF,aG)end function ax.Hide(aF)if aF.animating or aF.hidden then
return end if aF._searching then au.close(aF,{showTabs=false,jumpTo=aF.selectedTab and aF.selectedTab.tabPage})end aF.
animating=true aF._revealing=true aF.hidden=true aF.collapsedInteract.Visible=false if aF.minimised then aF.minimised=false
al.assign(aF.minimiseAction.iconLabel,'Image',ao.icons.minimise)end aF._restorePosition=aF.main.Position local aG,aH=aF:
_collapsedRect()local aI,aJ,aK,aL=TweenInfo.new(0.18,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),TweenInfo.new(0.35,
Enum.EasingStyle.Exponential,Enum.EasingDirection.InOut),TweenInfo.new(0.35,Enum.EasingStyle.Exponential,Enum.
EasingDirection.InOut),TweenInfo.new(0.2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)av.tweenService:Create(aF.drag.
dragCosmetic,aI,{Size=UDim2.fromOffset(0,4),BackgroundTransparency=1}):Play()task.delay(0.18,function()if not aF.hidden
then return end aF.drag.drag.Visible=false end)av.tweenService:Create(aF.windowShadow,aI,{Transparency=1}):Play()av.
tweenService:Create(aF.bottomFade,aI,{BackgroundTransparency=1}):Play()if aF.title then av.tweenService:Create(aF.title,aI,{
TextTransparency=1}):Play()end if aF.subtitle then av.tweenService:Create(aF.subtitle,aI,{TextTransparency=1}):Play()end if
aF.topbarIcon then av.tweenService:Create(aF.topbarIcon,aI,{ImageTransparency=1}):Play()end for aM,aN in ipairs(aF.
actionContainer:GetChildren())do if aN:IsA'Frame'then av.tweenService:Create(aN.ImageLabel,aI,{ImageTransparency=1}):Play()
end end for aM,aN in aF.tags do aN:_setShown(false,aI)end for aM,aN in pairs(aF.tabs)do if not aN.neglectSelector and aN.
topbarItem then aN:_applyVisual('hidden',aI)end end aF:_fadeSelectedElementsOut()av.tweenService:Create(aF.main,aJ,{Size=aH,
Position=aG}):Play()av.tweenService:Create(aF.windowCorner,aK,{CornerRadius=UDim.new(1,0)}):Play()task.delay(0.18,function()
if not aF.hidden then return end aF.topbar.Visible=false aF.elements.Visible=false aF.tabList.Visible=false at.
setCollapsedShown(aF,true,aL)end)task.delay(0.35,function()if not aF.hidden then return end aF.collapsedInteract.Visible=
true aF.animating=false aF._revealing=false end)end function ax.ToggleHide(aF)if aF.animating then return end if aF.hidden
then aF:Show()else aF:Hide()end end function ax.ToggleMinimise(aF)if aF.animating or aF.hidden then return end if aF._searching
then au.close(aF,{showTabs=true})end aF.animating=true local aG,aH=TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out)if aF.minimised then aF.
minimised=false al.assign(aF.minimiseAction.iconLabel,'Image',ao.icons.minimise)av.tweenService:Create(aF.main,aG,{Size=aF.
size}):Play()av.tweenService:Create(aF.windowShadow,aH,{Transparency=0.6}):Play()av.tweenService:Create(aF.bottomFade,aH,{
BackgroundTransparency=0}):Play()av.tweenService:Create(aF.drag.drag,aG,{Position=UDim2.new(aF.main.Position.X.Scale,aF.main.
Position.X.Offset,aF.main.Position.Y.Scale,aF.main.Position.Y.Offset+aF.size.Y.Offset/2+15)}):Play()task.delay(0.2,function
()if aF.minimised or aF.hidden then return end aF.elements.Visible=true aF.tabList.Visible=true for aI,aJ in pairs(aF.tabs)do
if not aJ.neglectSelector and aJ.topbarItem then aJ.topbarItem.Visible=true aJ:_applyVisual(if aF.selectedTab==aJ then
'selected'else'unselected',aH)end end aF:_revealElements(0.035,0.4)end)task.delay(0.5,function()aF.animating=false end)else
aF.minimised=true al.assign(aF.minimiseAction.iconLabel,'Image',ao.icons.maximise)aF:_fadeSelectedElementsOut()for aI,aJ in
pairs(aF.tabs)do if not aJ.neglectSelector and aJ.topbarItem then aJ:_applyVisual('hidden',aH)end end task.delay(0.3,function
()if not aF.minimised then return end aF.elements.Visible=false aF.tabList.Visible=false for aI,aJ in pairs(aF.tabs)do if not
aJ.neglectSelector and aJ.topbarItem then aJ.topbarItem.Visible=false end end end)av.tweenService:Create(aF.windowShadow,aH,{
Transparency=1}):Play()av.tweenService:Create(aF.bottomFade,aH,{BackgroundTransparency=1}):Play()av.tweenService:Create(aF.
main,aG,{Size=UDim2.fromOffset(aF.size.X.Offset,66)}):Play()av.tweenService:Create(aF.drag.drag,aG,{Position=UDim2.new(aF.main
.Position.X.Scale,aF.main.Position.X.Offset,aF.main.Position.Y.Scale,aF.main.Position.Y.Offset+33+15)}):Play()task.delay(
0.5,function()aF.animating=false end)end end function ax._syncDragBar(aF)local aG=aF.drag and aF.drag.drag if not aG then
return end local aH,aI=aF.main.Position,aF.size.Y.Offset/2+15 aG.Position=UDim2.new(aH.X.Scale,aH.X.Offset,aH.Y.Scale,aH.Y.Offset
+aI)end function ax._clampedPosition(aF,aG:UDim2):UDim2 if not aF.settings or not aF.settings.keepOnScreen then return aG end
if aG.X.Scale~=0 or aG.Y.Scale~=0 then return aG end local aH,aI,aJ,aK=aF.screenGui.AbsoluteSize,aF.size.X.Offset/2,aF.size.Y.
Offset/2,8 local aL,aM=math.clamp(aG.X.Offset,aI+aK,math.max(aI+aK,aH.X-aI-aK)),math.clamp(aG.Y.Offset,aJ+aK,math.max(aJ+aK,aH.Y-aJ-aK))if
aL==aG.X.Offset and aM==aG.Y.Offset then return aG end return UDim2.fromOffset(aL,aM)end function ax._clampToScreen(aF)aF.main.
Position=aF:_clampedPosition(aF.main.Position)end function ax._applyWindowSize(aF)if aF.unloaded then return end local aG=o()
local aH=aG~=aF.size aF.size=aG if aF.hidden or aF.minimised or aF.animating or aF._revealing then aF._pendingResize=aF.
_pendingResize or aH return end if not aH and not aF._pendingResize then return end aF._pendingResize=false aF.main.Size=aG aF:
_clampToScreen()aF:_syncDragBar()end function ax._watchViewport(aF)local aG,aH:RBXScriptConnection?=false local function z()
if aG then return end aG=true task.defer(function()aG=false aF:_applyWindowSize()end)end local function A()if aH then aF:
Disconnect(aH)aH=nil end local aI=av.workspace.CurrentCamera if aI then aH=aF:Connect(aI:GetPropertyChangedSignal'ViewportSize',
z)end z()end aF:Connect(av.workspace:GetPropertyChangedSignal'CurrentCamera',A)A()local aI=0 aF:Connect(av.runService.
Heartbeat,function(aJ:number)aI+=aJ if aI<aD then return end aI=0 aF:_applyWindowSize()end)end function ax._bindKeybind(aF)aF:
Connect(av.userInputService.InputBegan,function(aG,aH)if aH or aF._recordingKeybind then return end if aG.KeyCode==aF.settings.
toggleKeybind or aG.UserInputType==aF.settings.toggleKeybind then aF:ToggleHide()end end)end function ax._bindMouseOverride(
aF)local aG=av.userInputService local function y()return aF.settings.mouseOverride and not aF.hidden and not aF.minimised end
local function z()if not y()then return end if aG:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then return end if
aG.MouseBehavior~=Enum.MouseBehavior.Default then aG.MouseBehavior=Enum.MouseBehavior.Default end if not aG.
MouseIconEnabled then aG.MouseIconEnabled=true end end aF:Connect(aG:GetPropertyChangedSignal'MouseBehavior',z)aF:Connect(aG:
GetPropertyChangedSignal'MouseIconEnabled',z)aF:Connect(aG.InputEnded,function(aH)if aH.UserInputType==Enum.UserInputType.
MouseButton2 then z()end end)aF._freeMouse=z end function ax._bindTopbarDrag(aF)local aG,aH,aI,aJ=av.userInputService,false,
Vector2.zero,Vector2.zero if aF.screenGui and aF.screenGui.IgnoreGuiInset then aJ=av.guiService:GetGuiInset()end local
function B()local aK=aG:GetMouseLocation()+aI+aJ local aL,aM=aK.X,aK.Y if aF.settings and aF.settings.keepOnScreen then local aN,aO,
aP=aF.main.AbsoluteSize,aF.screenGui.AbsoluteSize,8 local aQ,aR=aN.X/2,aN.Y/2 aL=math.clamp(aL,aQ+aP,math.max(aQ+aP,aO.X-aQ-aP))aM=math.
clamp(aM,aR+aP,math.max(aR+aP,aO.Y-aR-aP))end return UDim2.fromOffset(aL,aM)end local function C(aK,aL)for aM,aN in{aF.tabList,aF.
actionContainer}do local aO,aP=aN.AbsolutePosition,aN.AbsoluteSize if aK>=aO.X and aK<=aO.X+aP.X and aL>=aO.Y and aL<=aO.Y+aP.Y then
return true end end return false end aF:Connect(aF.topbar.InputBegan,function(aK,aL)if aL then return end local aM=aK.
UserInputType.Name if aM~='MouseButton1'and aM~='Touch'then return end if C(aK.Position.X,aK.Position.Y)then return end if
not aF:_interactive()then return end aH=true if aF.screenGui and aF.screenGui.IgnoreGuiInset then aJ=av.guiService:
GetGuiInset()end aI=aF.main.AbsolutePosition+aF.main.AbsoluteSize*aF.main.AnchorPoint-aG:GetMouseLocation()end)aF:Connect(aG.
InputEnded,function(aK)local aL=aK.UserInputType.Name if aL=='MouseButton1'or aL=='Touch'then aH=false end end)aF:Connect(aG.
WindowFocusReleased,function()aH=false end)aF:Connect(av.runService.RenderStepped,function()if not aH then return end if not
aF:_interactive()then aH=false return end aF.main.Position=B()if aF.drag and aF.drag.drag then local aK=aF.main.Position aF.drag
.drag.Position=UDim2.new(aK.X.Scale,aK.X.Offset,aK.Y.Scale,aK.Y.Offset+(aF.main.Size.Y.Offset/2+15))end end)end function ax.
_buildSettingsUI(aF)aF.rfSettings:CreateSection{name='General'}aF.rfSettings:CreateKeybind{name='Toggle Keybind',icon=ao.
icons.search,value=aF.settings.toggleKeybind,isMenuToggle=true,onChanged=function(aG)aF.settings.toggleKeybind=aG aF:
SaveSettings()end}aF.rfSettings:CreateToggle{name='Unlock cursor while open',description=
[[Unlocks the cursor while the menu is open so you can configure in FPS games that lock it.]],value=aF.settings.
mouseOverride,callback=function(aG)aF.settings.mouseOverride=aG aF:SaveSettings()end}aF.rfSettings:CreateToggle{name=
'Welcome toast',description=[[Shows a 'Signed in as' toast the first time you open the menu on a new account.]],value=aF.
settings.welcomeToast,callback=function(aG)aF.settings.welcomeToast=aG aF:SaveSettings()end}aF.rfSettings:CreateToggle{name=
'Haptics',description=[[A subtle tap as you interact, on devices that support haptics.]],value=aF.settings.haptics,
callback=function(aG)aF.settings.haptics=aG ar.setEnabled(aG)aF:SaveSettings()end}aF.rfSettings:CreateSection{name='Window'}aF.
rfSettings:CreateToggle{name='Keep window on screen',description=
[[Stops the window being dragged off the edge of the screen and lost.]],value=aF.settings.keepOnScreen,callback=function(
aG)aF.settings.keepOnScreen=aG aF:SaveSettings()end}aF.rfSettings:CreateButton{name='Reset Window Position',callback=function
()av.tweenService:Create(aF.main,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Position=UDim2.
new(0.5,0,0.5,0)}):Play()av.tweenService:Create(aF.drag.drag,TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),{Position=UDim2.new(0.5,0,0.5,aF.size.Y.Offset/2+15)}):Play()end}if next(aF.configuration)~=nil then
aF.rfSettings:CreateSection{name='Configurations'}local aG,aH,aI=aF:ListConfigs()[1]local function A()local aJ=aF:ListConfigs()
aH:Refresh(aJ)if aG and not table.find(aJ,aG)then aG=aJ[1]end if aG then aH:Set(aG,true)end end aH=aF.rfSettings:CreateDropdown{name
='Saved Configurations',icon=ao.icons.config,options=aF:ListConfigs(),value=aG,placeholder='No saved configurations',
callback=function(aJ)aG=aJ end}aI=aF.rfSettings:CreateInput{name='Configuration Name',description=
[[Name a new configuration, or leave blank to overwrite the selected one.]],placeholder='e.g. PvP Loadout',clearOnFocus=
false}local aJ=aF.rfSettings:CreateGroup()aJ:CreateButton{name='Save',icon=ao.icons.config,callback=function()local aK=aI.
value if aK==''then aK=aG end if not aK or aK==''then aF:Toast{title=ap.resolve'Name your configuration first'}return end if aF
:Save(aK)then aI:Set''aG=aK A()aF:Toast{title=ap.resolve'Saved configuration',subtitle=aK,icon=ao.icons.config}else aF:Toast{
title=ap.resolve"Couldn't save configuration",subtitle=aK}end end}aJ:CreateButton{name='Load',callback=function()if not aG
or aG==''then aF:Toast{title=ap.resolve'Pick a configuration to load'}return end if aF:_applyNamedConfig(aG)then aF:Toast{
title=ap.resolve'Loaded configuration',subtitle=aG}else aF:Toast{title=ap.resolve"Couldn't load configuration",subtitle=aG}
end end}aJ:CreateButton{name='Delete',callback=function()local aK=aG if not aK or aK==''then aF:Toast{title=ap.resolve
'Pick a configuration to delete'}return end if aF:DeleteConfig(aK)then A()aF:Toast{title=ap.resolve'Deleted configuration',
subtitle=aK}else aF:Toast{title=ap.resolve"Couldn't delete configuration",subtitle=aK}end end}end end function ax.
SaveSettings(aF)return an.saveSettings(aF)end function ax.LoadSettings(aF)return an.loadSettings(aF)end function ax.
_fadeSelectedElementsOut(aF)if aF.selectedTab then for aG,aH in ipairs(aF.selectedTab.elements)do aH:_setShown(false,true)end
end end function ax._revealElements(aF,aG,aH)for aI,aJ in pairs(aF.tabs)do if aJ~=aF.selectedTab then for aK,aL in ipairs(aJ.
elements)do aL:_setShown(true,false)end end end local aI=aF.selectedTab if not aI then return end local aJ=aI.tabPage local aK=
aJ.AbsolutePosition.Y local aL,aM,aN=aK+aJ.AbsoluteWindowSize.Y,math.floor(aH/aG),0 for aO,aP in ipairs(aI.elements)do local aQ=aP.
main.AbsolutePosition.Y local aR=(aQ+aP.main.AbsoluteSize.Y)>aK and aQ<aL if aR then aP:_setShown(true,true)aN+=1 if aN<=aM then
task.wait(aG)end else aP:_setShown(true,false)end end end function ax.Show(aF)if aF.animating or not aF.hidden then return end
aF.animating=true aF._revealing=true if aF.configuration.autoLoad and not aF._autoLoaded then aF._autoLoaded=true local aG,aH=
pcall(aF.Load,aF)if not aG then aq.warn('Volcano: Failed to load configuration - '..tostring(aH))end end aF.hidden=false aF.
minimised=false if aF._themeRefreshPending then aF._themeRefreshPending=false aF:_refreshElementThemes()end aF.
collapsedInteract.Visible=false if aF._freeMouse then aF._freeMouse()end if aF.hasShownOnce then aF:_quickRestore()else aF.
hasShownOnce=true aF:_firstShow()end end function ax._quickRestore(aF)local aG=aF:_clampedPosition(aF._restorePosition or
UDim2.new(0.5,0,0.5,0))aF._restorePosition=aG local aH,aI,aJ=TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out
),TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),TweenInfo.new(0.3,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out)at.setCollapsedShown(aF,false,TweenInfo.new(0.15,Enum.EasingStyle.Quint,Enum.EasingDirection.Out))av.
tweenService:Create(aF.main,aH,{Size=aF.size,Position=aG}):Play()av.tweenService:Create(aF.windowCorner,aI,{CornerRadius=aF.
theme.CornerRoundness}):Play()task.delay(0.22,function()aF.topbar.Visible=true aF.tabList.Visible=true aF.elements.Visible=
true av.tweenService:Create(aF.windowShadow,aJ,{Transparency=0.6}):Play()av.tweenService:Create(aF.bottomFade,aJ,{
BackgroundTransparency=0}):Play()if aF.topbarIcon then av.tweenService:Create(aF.topbarIcon,aJ,{ImageTransparency=0}):Play()
end if aF.title then av.tweenService:Create(aF.title,aJ,{TextTransparency=0}):Play()end if aF.subtitle then av.tweenService:
Create(aF.subtitle,aJ,{TextTransparency=0.7}):Play()end for aK,aL in ipairs(aF.actionContainer:GetChildren())do if aL:IsA
'Frame'then av.tweenService:Create(aL.ImageLabel,aJ,{ImageTransparency=0.6}):Play()end end if aF.settingsAction and aF.
selectedTab==aF.rfSettings then av.tweenService:Create(aF.settingsAction.iconLabel,aJ,{ImageTransparency=0.2}):Play()end for
aK,aL in aF.tags do aL:_setShown(true,aJ)end for aK,aL in pairs(aF.tabs)do if not aL.neglectSelector and aL.topbarItem then aL.
topbarItem.Visible=true aL:_applyVisual(if aF.selectedTab==aL then'selected'else'unselected',aJ)end end aF:_revealElements(
0.035,0.4)end)task.delay(0.22,function()aF.drag.drag.Position=UDim2.new(aG.X.Scale,aG.X.Offset,aG.Y.Scale,aG.Y.Offset+aF.size.
Y.Offset/2+15)aF.drag.dragCosmetic.Size=UDim2.fromOffset(0,4)aF.drag.dragCosmetic.BackgroundTransparency=1 aF.drag.drag.
Visible=true av.tweenService:Create(aF.drag.dragCosmetic,aH,{Size=UDim2.fromOffset(100,4),BackgroundTransparency=0.7}):
Play()end)task.delay(0.6,function()aF.animating=false aF._revealing=false end)end function ax._firstShow(aF)aF.elements.
Visible=true aF.tabList.Visible=true aF.drag.drag.Visible=false aF.main.Visible=true av.tweenService:Create(aF.main,TweenInfo
.new(0.9,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{BackgroundTransparency=0,Size=aF.size}):Play()task.wait(0.65)av.
tweenService:Create(aF.windowShadow,TweenInfo.new(0.6,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{
Transparency=0.6}):Play()av.tweenService:Create(aF.bottomFade,TweenInfo.new(0.6,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),{BackgroundTransparency=0}):Play()task.wait(0.3)if aF.icon then av.tweenService:Create(aF.topbarIcon,
TweenInfo.new(0.6,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{ImageTransparency=0}):Play()end if aF.title
then av.tweenService:Create(aF.title,TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{
TextTransparency=0}):Play()end task.wait(0.1)if aF.subtitle then av.tweenService:Create(aF.subtitle,TweenInfo.new(0.4,Enum.
EasingStyle.Exponential,Enum.EasingDirection.Out),{TextTransparency=0.7}):Play()end for aG,aH in ipairs(aF.actionContainer:
GetChildren())do if aH:IsA'Frame'then task.wait(0.02)av.tweenService:Create(aH.ImageLabel,TweenInfo.new(0.4,Enum.
EasingStyle.Exponential,Enum.EasingDirection.Out),{ImageTransparency=0.6}):Play()end end for aG,aH in aF.tags do aH:
_setShown(true,TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out))end task.wait(0.2)task.spawn(
function()for aG,aH in pairs(aF.tabs)do if not aH.neglectSelector then aH.topbarItem.Visible=true aH:_applyVisual(if aF.
selectedTab==aH then'selected'else'unselected',TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out))aH:
_spinGradients()task.wait(0.15)end end end)aF:_revealElements(0.03,2)task.wait(1)aF.drag.drag.Visible=true av.tweenService:
Create(aF.drag.dragCosmetic,TweenInfo.new(0.6,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{
BackgroundTransparency=0.7}):Play()av.tweenService:Create(aF.drag.dragCosmetic,TweenInfo.new(1,Enum.EasingStyle.
Exponential,Enum.EasingDirection.Out),{Size=UDim2.fromOffset(100,4)}):Play()aF.animating=false aF._revealing=false local aG
=av.localPlayer if aG and aF.settings.welcomeToast and at.isNewUser()then aF:Toast{title=aG.DisplayName,subtitle=ap.resolve
'Signed in as',subtitleAbove=true,avatar=aG.UserId,minWidth=220}end end function ax.GetPath(aF)return an.getPath(aF)end
function ax.Save(aF,aG)if aG~=nil and(type(aG)~='string'or aG=='')then return false end return an.save(aF,aG)end function ax.Load
(aF,aG)if aG~=nil and(type(aG)~='string'or aG=='')then return false end return an.load(aF,aG)end function ax._applyNamedConfig(aF
,aG)if not aF:Load(aG)then return false end aF:Save()return true end function ax.ListConfigs(aF)return an.list(aF)end function
ax.DeleteConfig(aF,aG)return an.delete(aF,aG)end function ax.Get(aF,aG)local aH=aF.controls[aG]return aH and aH.value end function ax.
Set(aF,aG,aH)local aI=aF.controls[aG]if not aI then return false end aI:Set(aH)return true end function ax._jumpTo(aF,aG)if aG then aF
.elementsLayout:JumpTo(aG)end end function ax.Navigate(aF,aG)if aG==nil then return end local aH for aI,aJ in aF.tabs do if aJ==aG
or aJ.name==aG or aJ.tabPage==aG then aH=aJ break end end if not aH then return end aH:Select()end function ax.Create(aF,aG,aH,aI)
assert(typeof(aG)=='string','Invalid argument #1 (string expected)')local aJ=Instance.new(aG)if aI and aF.theme then for aK,aL
in aI do aJ[aK]=(if typeof(aL)=='table'then aL[2](aF.theme[aL[1] ])else aF.theme[aL])end aF.themeProperties[aJ]=aI end if aH then for
aK,aL in aH do if ap.isToken(aL)then aF:_bindLocale(aJ,aK,ap.sourceOf(aL))else al.assign(aJ,aK,aL)end end end table.insert(aF.
instances,aJ)return aJ end function ax._bindLocale(aF,aG,aH,aI)aG[aH]=ap.resolve(aI)local aJ=aF.localeProperties[aG]if not aJ then aJ={
}aF.localeProperties[aG]=aJ end aJ[aH]=aI end function ax.SetLocale(aF,aG)ap.setActive(aG)for aH,aI in aF.localeProperties do for aJ,aK
in aI do aH[aJ]=ap.resolve(aK)end end end function ax.SetTranslator(aF,aG)ap.translator=aG end function ax.RegisterTranslations(aF
,aG)ap.register(aG)aF:SetLocale(ap.current)end function ax.CreateGlow(aF,aG,aH,aI,aJ)local aK={BlurRadius=UDim.new(0,aI),
Transparency=aJ,ZIndex=-1,Parent=aG}if typeof(aH)=='string'then return aF:Create('UIShadow',aK,{Color={aH,function(aL)return if
typeof(aL)=='ColorSequence'then aL.Keypoints[1].Value else aL end}})end aK.Color=aH return aF:Create('UIShadow',aK)end function
ax._flashResult(aF,aG,aH)local aI=aG.box if not aI then return end local aJ,aK,aL,aM,aN,aO=aG.glow,aG.boxStroke,aH and ao.accent.on or aF
.theme.ErrorColor,aH and ao.accent.onStroke or aF.theme.ErrorStrokeColor,TweenInfo.new(0.1,Enum.EasingStyle.Quint,Enum.
EasingDirection.Out),TweenInfo.new(0.45,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)av.tweenService:Create(aI,aN,{
BackgroundColor3=aL}):Play()if aK then av.tweenService:Create(aK,aN,{Color=aM,Transparency=0.4}):Play()end if aJ then av.
tweenService:Create(aJ,aN,{Color=aM,Transparency=0.6}):Play()end aG._flashToken=(aG._flashToken or 0)+1 local aP=aG._flashToken
task.delay(0.22,function()if aG._flashToken~=aP then return end av.tweenService:Create(aI,aO,{BackgroundColor3=aF.theme.
FieldBackground}):Play()if aK then av.tweenService:Create(aK,aO,{Color=aF.theme.SurfaceStroke,Transparency=0.85}):Play()end
if aJ then av.tweenService:Create(aJ,aO,{Color=aF.theme.FieldGlow,Transparency=aG._glowIdle or 1}):Play()end end)end function
ax.CreateHoverOverlay(aF,aG)local aH=aF:Create('Frame',{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1
,Size=UDim2.fromScale(1,1),BorderSizePixel=0,ZIndex=1,Parent=aG})aF:Create('UICorner',{Parent=aH},{CornerRadius=
'ElementCornerRadius'})return aH end function ax._wireElementHover(aF,aG)local aH,aI=TweenInfo.new(0.25,Enum.EasingStyle.Quint
,Enum.EasingDirection.Out),aF.theme aF:Connect(aG.main.MouseEnter,function()if not aF:_interactive()then return end av.
tweenService:Create(aG.stroke,aH,{Transparency=aI.ElementStrokeHoverTransparency,Color=aI.ElementStrokeHover}):Play()av.
tweenService:Create(aG.title,aH,{TextColor3=aI.ElementTextHoverColor}):Play()if aG.hoverOverlay then av.tweenService:Create(aG
.hoverOverlay,aH,{BackgroundTransparency=0.97}):Play()end end)aF:Connect(aG.main.MouseLeave,function()av.tweenService:
Create(aG.stroke,aH,{Transparency=aI.ElementStrokeTransparency,Color=aI.ElementStroke}):Play()av.tweenService:Create(aG.title,
aH,{TextColor3=aI.ContentColor}):Play()if aG.hoverOverlay then av.tweenService:Create(aG.hoverOverlay,aH,{
BackgroundTransparency=1}):Play()end end)end function ax._runGuarded(aF,aG,aH,...)local aI=table.pack(...)task.spawn(function
()local aJ,aK=pcall(function()return aH(table.unpack(aI,1,aI.n))end)if aJ or aG._errored then return end aG._errored=true local
aL,aM=aG.flashTarget or aG.main,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)av.tweenService:Create(aL,aM
,{BackgroundColor3=aF.theme.ErrorColor}):Play()av.tweenService:Create(aG.stroke,aM,{Color=aF.theme.ErrorStrokeColor}):Play()
if aG.title then aG.title.Text=ap.resolve'Error, log recorded in console.'end aq.warn(`Volcano encountered an error, with the callback for a {
aG.__type} component named '{aG.name}':`)aq.print(aK)task.wait(1)if aG.title then aG.title.Text=ap.resolve(aG.name)end av.
tweenService:Create(aL,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{BackgroundColor3=Color3.
fromRGB(255,255,255)}):Play()av.tweenService:Create(aG.stroke,TweenInfo.new(0.6,Enum.EasingStyle.Quint,Enum.
EasingDirection.Out),{Color=aF.theme.ElementStroke}):Play()aG._errored=false end)end function ax.StyleElementBody(aF,aG)aF:
Create('UIGradient',{Rotation=270,Parent=aG},{Color='ElementGradient'})aF:Create('UICorner',{Parent=aG},{CornerRadius=
'ElementCornerRadius'})return aF:Create('UIStroke',{Transparency=1,Parent=aG},{Color='ElementStroke',Transparency=
'ElementStrokeTransparency'})end function ax._buildCompactRow(aF,aG,aH,aI)local aJ=aF:Create('Frame',{Name=aH,Size=UDim2.
fromOffset(0,aC),AutomaticSize=Enum.AutomaticSize.X,ClipsDescendants=true,BackgroundColor3=Color3.fromRGB(255,255,255),
BorderSizePixel=0,BackgroundTransparency=1,Parent=aG.tabPage},{BackgroundTransparency='ElementTransparency'})local aK=aF:
StyleElementBody(aJ)aF:Create('UIFlexItem',{FlexMode=Enum.UIFlexMode.Fill,Parent=aJ})aF:Create('UIListLayout',{FillDirection
=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalFlex=Enum.UIFlexAlignment.Fill,
Parent=aJ})local aL=aF:Create('TextButton',{Text='',BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.fromOffset(0,aC),BorderSizePixel=0,TextTransparency=1,ZIndex=aI or 1,Parent=
aJ})aF:Create('UICorner',{Parent=aL},{CornerRadius='ElementCornerRadius'})return aJ,aK,aL end function ax.StyleElementPanel(aF,aG
)aF:Create('UIGradient',{Rotation=270,Parent=aG},{Color='ElementGradient'})aF:Create('UICorner',{Parent=aG},{CornerRadius=
'ElementCornerRadius'})local aH=aF:Create('UIStroke',{Color=Color3.fromRGB(255,255,255),Transparency=1,Parent=aG})aF:Create(
'UIGradient',{Rotation=270,Parent=aH},{Color='ElementStrokeGradient'})return aH end function ax._reveal(aF,aG,aH,aI,aJ)if not aG
then return end if aI then av.tweenService:Create(aG,aJ or ay,aH):Play()else for aK,aL in aH do aG[aK]=aL end end end function ax.
_revealCommon(aF,aG,aH)aF:_reveal(aG.stroke,{Transparency=aF.theme.ElementStrokeTransparency},aH)aF:_reveal(aG.title,{
TextTransparency=0},aH)aF:_reveal(aG.main,{BackgroundTransparency=aF.theme.ElementTransparency or 0},aH)if aG.iconLabel then aF
:_reveal(aG.iconLabel,{ImageTransparency=0},aH)end if aG.descriptor then aF:_reveal(aG.descriptor.titleLabel,{
TextTransparency=0.7},aH)end end function ax._hideCommon(aF,aG,aH)aF:_reveal(aG.stroke,{Transparency=1},aH)aF:_reveal(aG.title,{
TextTransparency=1},aH)aF:_reveal(aG.main,{BackgroundTransparency=1},aH)if aG.iconLabel then aF:_reveal(aG.iconLabel,{
ImageTransparency=1},aH)end if aG.descriptor then aF:_reveal(aG.descriptor.titleLabel,{TextTransparency=1},aH)end end
function ax._collapsedRect(aF)local aG=az local aH=UDim2.new(aA.X.Scale,aA.X.Offset,aA.Y.Scale,aA.Y.Offset+aG.Y.Offset/2)return aH,
aG end function ax._interactive(aF)return not aF.animating and not aF.hidden end function ax._settled(aF)return not aF.hidden
and not aF._revealing end function ax.Connect(aF,aG,aH)local aI=aG:Connect(aH)table.insert(aF.connections,aI)return aI end function
ax.ConnectFor(aF,aG,aH,aI)local aJ=aF:Connect(aH,aI)aG.connections=aG.connections or{}table.insert(aG.connections,aJ)return aJ end
function ax.Disconnect(aF,aG)if not aG then return end local aH=table.find(aF.connections,aG)if aH then table.remove(aF.
connections,aH)end aG:Disconnect()end function ax.DestroySubtree(aF,aG)if not aG then return end local aH={[aG]=true}for aI,aJ in
aG:GetDescendants()do aH[aJ]=true end for aI=#aF.instances,1,-1 do local aJ=aF.instances[aI]if aH[aJ]then table.remove(aF.instances
,aI)aF.themeProperties[aJ]=nil aF.localeProperties[aJ]=nil end end aG:Destroy()end function ax.Unload(aF)aF.unloaded=true ar.
teardown()ar.releaseContainer(aF.screenGui)if aF._liveTween then aF._liveTween:Cancel()aF._liveTween=nil end for aG=#aF.
connections,1,-1 do aF.connections[aG]:Disconnect()end for aG=#aF.instances,1,-1 do aF.instances[aG]:Destroy()end table.clear(
aF.connections)table.clear(aF.instances)table.clear(aF.themeProperties)table.clear(aF.localeProperties)table.clear(aF.
controls)table.clear(aF.tabs)end return ax end)()end,[25]=function()a(25)return(function(...)
return{WindowColor=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(22,16,32)),ColorSequenceKeypoint.new(
0.9999,Color3.fromRGB(30,22,46)),ColorSequenceKeypoint.new(1,Color3.fromRGB(38,28,56))},ShadowColor=Color3.fromRGB(12,6,
22),ElementStroke=Color3.fromRGB(54,42,74),ElementGradient=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(
32,24,48)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(36,28,54)),ColorSequenceKeypoint.new(1,Color3.fromRGB(36,28,
54))},ElementStrokeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(72,58,104)),
ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(88,72,124)),ColorSequenceKeypoint.new(1,Color3.fromRGB(72,58,104))},
ElementStrokeHover=Color3.fromRGB(84,68,118),TabBackground=ColorSequence.new(Color3.fromRGB(54,42,80),Color3.fromRGB(34,
26,52)),TabStroke=ColorSequence.new(Color3.fromRGB(88,70,128),Color3.fromRGB(54,42,80)),SliderBackground=Color3.fromRGB(
46,36,68),SliderBackgroundHover=Color3.fromRGB(60,48,90),SliderProgress=ColorSequence.new(Color3.fromRGB(170,112,248),
Color3.fromRGB(138,80,224)),AccentColor=Color3.fromRGB(168,110,246),AccentStroke=Color3.fromRGB(200,154,255),
ToggleKnobOff=Color3.fromRGB(224,214,236),StatBackground=Color3.fromRGB(24,18,38),DropdownHighlight=Color3.fromRGB(168,
110,246),NeutralButton=Color3.fromRGB(46,36,68),NeutralButtonHover=Color3.fromRGB(60,48,90),NeutralButtonStroke=Color3.
fromRGB(140,116,190)}end)()end,[26]=function()a(26)return(function(...)return{WindowColor=
ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(12,16,34)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(
20,26,50)),ColorSequenceKeypoint.new(1,Color3.fromRGB(28,36,66))},ShadowColor=Color3.fromRGB(6,8,20),ElementStroke=
Color3.fromRGB(44,52,82),ElementGradient=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(26,32,58)),
ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(30,38,66)),ColorSequenceKeypoint.new(1,Color3.fromRGB(30,38,66))},
ElementStrokeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(56,66,104)),ColorSequenceKeypoint.
new(0.9999,Color3.fromRGB(70,82,124)),ColorSequenceKeypoint.new(1,Color3.fromRGB(56,66,104))},ElementStrokeHover=Color3.
fromRGB(64,76,116),TabBackground=ColorSequence.new(Color3.fromRGB(48,58,92),Color3.fromRGB(30,38,64)),TabStroke=
ColorSequence.new(Color3.fromRGB(78,92,140),Color3.fromRGB(48,58,92)),SliderBackground=Color3.fromRGB(40,48,78),
SliderBackgroundHover=Color3.fromRGB(54,64,100),SliderProgress=ColorSequence.new(Color3.fromRGB(64,132,248),Color3.
fromRGB(42,104,224)),AccentColor=Color3.fromRGB(48,120,240),AccentStroke=Color3.fromRGB(96,164,255),ToggleKnobOff=Color3
.fromRGB(196,206,232),StatBackground=Color3.fromRGB(20,26,48),DropdownHighlight=Color3.fromRGB(48,120,240),NeutralButton
=Color3.fromRGB(40,48,78),NeutralButtonHover=Color3.fromRGB(54,64,100),NeutralButtonStroke=Color3.fromRGB(120,138,195)}
end)()end,[27]=function()local aa, ab, ac=a(27)return(function(...)local ad=ac(ab.Parent.Parent.utility.variables
)return{CornerRoundness=UDim.new(0,20),WindowColor=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(10,10,10
)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(25,25,25)),ColorSequenceKeypoint.new(1,Color3.fromRGB(35,35,35))},
ShadowColor=Color3.fromRGB(20,20,20),ElementStroke=Color3.fromRGB(35,35,35),ElementGradient=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(30,30,30)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(35,35,35)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(35,35,35))},ElementStrokeGradient=ColorSequence.new{ColorSequenceKeypoint.
new(0,Color3.fromRGB(48,48,48)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(58,58,58)),ColorSequenceKeypoint.new(1,
Color3.fromRGB(48,48,48))},TabColor=Color3.fromRGB(255,255,255),TabBackground=ColorSequence.new(Color3.fromRGB(50,50,50)
,Color3.fromRGB(35,35,35)),TabStroke=ColorSequence.new(Color3.fromRGB(95,95,95),Color3.fromRGB(50,50,50)),
SliderBackground=Color3.fromRGB(47,47,47),SliderBackgroundHover=Color3.fromRGB(60,60,60),SliderProgress=ColorSequence.
new(Color3.fromRGB(0,170,127),Color3.fromRGB(0,134,98)),SliderStroke=Color3.fromRGB(255,255,255),ActionColor=Color3.
fromRGB(255,255,255),TitleFont=ad.brandFont(Enum.FontWeight.SemiBold),Font=ad.brandFont(Enum.FontWeight.Medium),
ContentColor=Color3.fromRGB(255,255,255),LiveAnimation=true,DarkToggleOverlay=true,ElementTransparency=0,
ElementStrokeTransparency=0,ElementStrokeHoverTransparency=0,ElementStrokeHover=Color3.fromRGB(50,50,50),
ElementCornerRadius=UDim.new(0,12),ElementTextHoverColor=Color3.fromRGB(255,255,255),TitlingColor=Color3.fromRGB(255,255
,255),DropdownHighlight=Color3.fromRGB(255,255,255),AccentColor=Color3.fromRGB(23,153,110),AccentStroke=Color3.fromRGB(
32,201,144),AccentGlow=0.4,StatBackground=Color3.fromRGB(25,25,25),SliderHandle=Color3.fromRGB(255,255,255),
PillCornerRadius=UDim.new(1,0),ToggleTrack=Color3.fromRGB(0,0,0),ToggleTrackTransparency=0.9,ToggleKnobOff=Color3.
fromRGB(255,255,255),ToggleKnobOffTransparency=0.8,FieldBackground=Color3.fromRGB(255,255,255),FieldTransparency=0.9,
FieldGlow=Color3.fromRGB(255,255,255),PlaceholderColor=Color3.fromRGB(178,178,178),SurfaceStroke=Color3.fromRGB(255,255,
255),NeutralButton=Color3.fromRGB(38,38,38),NeutralButtonHover=Color3.fromRGB(54,54,54),NeutralButtonStroke=Color3.
fromRGB(255,255,255),ErrorColor=Color3.fromRGB(185,50,50),ErrorStrokeColor=Color3.fromRGB(240,75,75)}end)()end,[28]=
function()a(28)return(function(...)return{WindowColor=ColorSequence.new{ColorSequenceKeypoint.
new(0,Color3.fromRGB(22,18,16)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(32,27,23)),ColorSequenceKeypoint.new(1,
Color3.fromRGB(40,33,28))},ShadowColor=Color3.fromRGB(16,12,8),ElementStroke=Color3.fromRGB(54,46,40),ElementGradient=
ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(32,27,23)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(
38,32,27)),ColorSequenceKeypoint.new(1,Color3.fromRGB(38,32,27))},ElementStrokeGradient=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(72,62,52)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(88,76,64)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(72,62,52))},ElementStrokeHover=Color3.fromRGB(84,72,60),TabBackground=
ColorSequence.new(Color3.fromRGB(56,47,40),Color3.fromRGB(36,30,26)),TabStroke=ColorSequence.new(Color3.fromRGB(92,78,66
),Color3.fromRGB(56,47,40)),SliderBackground=Color3.fromRGB(48,40,34),SliderBackgroundHover=Color3.fromRGB(62,52,44),
SliderProgress=ColorSequence.new(Color3.fromRGB(244,152,44),Color3.fromRGB(220,110,24)),AccentColor=Color3.fromRGB(240,
142,40),AccentStroke=Color3.fromRGB(255,182,92),ToggleKnobOff=Color3.fromRGB(232,224,214),StatBackground=Color3.fromRGB(
26,21,18),DropdownHighlight=Color3.fromRGB(240,142,40),NeutralButton=Color3.fromRGB(48,40,34),NeutralButtonHover=Color3.
fromRGB(64,54,46),NeutralButtonStroke=Color3.fromRGB(150,128,104)}end)()end,[29]=function()local aa, ab, ac=a(29)
return(function(...)local ad=ac(ab.Parent.Parent.utility.variables)return{WindowColor=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(246,249,251)),ColorSequenceKeypoint.new(1,Color3.fromRGB(236,241,245))},
ShadowColor=Color3.fromRGB(116,124,132),LiveAnimation=false,ElementTransparency=0,ElementStroke=Color3.fromRGB(218,224,
228),ElementGradient=ColorSequence.new(Color3.fromRGB(255,255,255)),ElementStrokeGradient=ColorSequence.new(Color3.
fromRGB(224,230,234),Color3.fromRGB(232,238,242)),ElementStrokeTransparency=0.1,ElementStrokeHoverTransparency=0,
ElementStrokeHover=Color3.fromRGB(0,176,208),DarkToggleOverlay=false,TabColor=Color3.fromRGB(38,42,46),TabBackground=
ColorSequence.new(Color3.fromRGB(0,176,208),Color3.fromRGB(0,150,184)),TabStroke=ColorSequence.new(Color3.fromRGB(80,206
,230),Color3.fromRGB(0,160,196)),SliderBackground=Color3.fromRGB(224,230,234),SliderBackgroundHover=Color3.fromRGB(212,
220,224),SliderProgress=ColorSequence.new(Color3.fromRGB(0,182,214),Color3.fromRGB(0,146,182)),SliderStroke=Color3.
fromRGB(200,206,210),AccentColor=Color3.fromRGB(0,176,208),AccentStroke=Color3.fromRGB(96,210,232),AccentGlow=0.85,
StatBackground=Color3.fromRGB(255,255,255),SliderHandle=Color3.fromRGB(60,66,72),ToggleTrack=Color3.fromRGB(198,204,210)
,ToggleTrackTransparency=0,ToggleKnobOffTransparency=0.05,FieldBackground=Color3.fromRGB(224,230,234),FieldTransparency=
0,FieldGlow=Color3.fromRGB(148,154,160),PlaceholderColor=Color3.fromRGB(138,144,150),SurfaceStroke=Color3.fromRGB(204,
210,214),NeutralButton=Color3.fromRGB(224,230,234),NeutralButtonHover=Color3.fromRGB(212,220,224),NeutralButtonStroke=
Color3.fromRGB(242,246,248),ActionColor=Color3.fromRGB(68,74,80),TitlingColor=Color3.fromRGB(26,30,34),TitleFont=ad.
brandFont(Enum.FontWeight.SemiBold),Font=ad.brandFont(Enum.FontWeight.Medium),ContentColor=Color3.fromRGB(42,46,52),
ElementTextHoverColor=Color3.fromRGB(18,22,26),DropdownHighlight=Color3.fromRGB(0,176,208),ErrorColor=Color3.fromRGB(200
,60,55),ErrorStrokeColor=Color3.fromRGB(240,80,70)}end)()end,[30]=function()a(30)return(function
(...)return{WindowColor=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(26,18,22)),ColorSequenceKeypoint.
new(0.9999,Color3.fromRGB(36,26,31)),ColorSequenceKeypoint.new(1,Color3.fromRGB(44,32,38))},ShadowColor=Color3.fromRGB(
18,10,14),ElementStroke=Color3.fromRGB(58,44,50),ElementGradient=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.
fromRGB(34,25,29)),ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(40,30,34)),ColorSequenceKeypoint.new(1,Color3.
fromRGB(40,30,34))},ElementStrokeGradient=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(76,58,66)),
ColorSequenceKeypoint.new(0.9999,Color3.fromRGB(92,70,80)),ColorSequenceKeypoint.new(1,Color3.fromRGB(76,58,66))},
ElementStrokeHover=Color3.fromRGB(88,66,74),TabBackground=ColorSequence.new(Color3.fromRGB(62,46,53),Color3.fromRGB(38,
29,33)),TabStroke=ColorSequence.new(Color3.fromRGB(102,78,88),Color3.fromRGB(62,46,53)),SliderBackground=Color3.fromRGB(
50,38,44),SliderBackgroundHover=Color3.fromRGB(64,50,56),SliderProgress=ColorSequence.new(Color3.fromRGB(244,88,140),
Color3.fromRGB(220,60,116)),AccentColor=Color3.fromRGB(240,82,138),AccentStroke=Color3.fromRGB(255,134,178),
ToggleKnobOff=Color3.fromRGB(236,220,226),StatBackground=Color3.fromRGB(28,20,24),DropdownHighlight=Color3.fromRGB(240,
82,138),NeutralButton=Color3.fromRGB(50,38,44),NeutralButtonHover=Color3.fromRGB(64,50,56),NeutralButtonStroke=Color3.
fromRGB(170,122,140)}end)()end,[31]=function()a(31)return(function(...)export type Theme=string|
{[string]:any}export type Translator=(source:string,localeId:string)->string?export type Translations={[string]:{[string
]:string}}export type WindowConfiguration={autoSave:boolean?,autoLoad:boolean?,fileName:string?,customFolder:string?}
export type WindowProps={name:string?,subtitle:string?,theme:Theme?,icon:(string|number)?,showName:string?,showIcon:(
string|number)?,configuration:WindowConfiguration?,fallbackFont:(Font|Enum.Font)?,locale:string?,translations:
Translations?,translator:Translator?}export type TabProps={name:string?,icon:(string|number)?}export type TagProps={text
:string?,title:string?,icon:(string|number)?,color:Color3?,order:number?}export type SectionProps={name:string?,icon:(
string|number)?}export type GroupProps={direction:string?}export type ButtonProps={name:string?,description:string?,icon
:(string|number)?,callback:(()->())?}export type ToggleProps={name:string?,description:string?,icon:(string|number)?,
flag:string?,value:boolean?,forgetState:boolean?,callback:((value:boolean)->())?}export type SliderProps={name:string?,
description:string?,icon:(string|number)?,flag:string?,range:{number}?,increment:number?,value:number?,suffix:string?,
minimal:boolean?,forgetState:boolean?,callback:((value:number)->())?}export type DropdownProps={name:string?,description
:string?,icon:(string|number)?,flag:string?,options:{string}?,value:(string|{string})?,multiSelect:boolean?,placeholder:
string?,forgetState:boolean?,callback:((value:any)->())?}export type InputProps={name:string?,description:string?,icon:(
string|number)?,flag:string?,value:string?,placeholder:string?,numeric:boolean?,clearOnFocus:boolean?,forgetState:
boolean?,callback:((value:string)->())?}export type KeybindProps={name:string?,description:string?,icon:(string|number)?
,flag:string?,value:(EnumItem|string)?,forgetState:boolean?,isMenuToggle:boolean?,hold:boolean?,holdThreshold:number?,
callback:((value:EnumItem|boolean)->())?,onChanged:((key:EnumItem)->())?}export type ColorPickerProps={name:string?,
description:string?,icon:(string|number)?,flag:string?,color:Color3?,alpha:number?,forgetState:boolean?,callback:((value
:Color3,alpha:number)->())?}export type StatProps={name:string?,description:string?,icon:(string|number)?,prefix:string?
,suffix:string?,value:number?,display:string?,compact:boolean?,changeMode:string?,changeBaseline:string?,numberEasing:
boolean?}export type NotifyProps={title:string?,content:string?,icon:(string|number)?,duration:number?}export type
ToastProps={title:string?,subtitle:string?,subtitleAbove:boolean?,icon:(string|number)?,avatar:number?,minWidth:number?,
duration:number?,position:'Top'|'Bottom'?}export type PopupBox={title:string?,description:string?,icon:(string|number)?}
export type PopupOption={text:string?,style:string?,callback:(()->())?}export type PopupProps={title:string?,subtitle:
string?,icon:(string|number)?,content:string?,boxes:{PopupBox}?,options:{PopupOption}?,dismissable:boolean?}export type
Moveable={MoveTo:(self:any,index:number)->(),MoveToTop:(self:any)->(),MoveToBottom:(self:any)->(),MoveUp:(self:any)->(),
MoveDown:(self:any)->()}export type Button=Moveable&{}export type Toggle=Moveable&{value:boolean,Set:(self:Toggle,value:
boolean,skipCallback:boolean?)->()}export type Slider=Moveable&{value:number,Set:(self:Slider,value:number,skipCallback:
boolean?)->()}export type Dropdown=Moveable&{value:{string},Set:(self:Dropdown,value:string|{string},skipCallback:
boolean?)->()}export type Input=Moveable&{value:string,Set:(self:Input,value:string,skipCallback:boolean?)->()}export
type Keybind=Moveable&{value:EnumItem,Set:(self:Keybind,value:EnumItem|string,skipChanged:boolean?)->()}export type
ColorPicker=Moveable&{value:Color3,alpha:number,Set:(self:ColorPicker,value:Color3|string,skipCallback:boolean?)->(),
SetAlpha:(self:ColorPicker,alpha:number,skipCallback:boolean?)->()}export type Stat=Moveable&{value:number,Set:(self:
Stat,value:number)->(),ResetBaseline:(self:Stat,value:number?)->()}export type Section=Moveable&{}export type Tag={Set:(
self:Tag,props:TagProps)->(),SetColor:(self:Tag,color:Color3)->(),SetText:(self:Tag,text:string?)->(),SetIcon:(self:Tag,
icon:(string|number)?)->(),Remove:(self:Tag)->()}export type Popup={Close:(self:Popup)->()}export type Group=Moveable&{
CreateButton:(self:Group,props:ButtonProps)->Button,CreateToggle:(self:Group,props:ToggleProps)->Toggle,CreateSwitch:(
self:Group,props:ToggleProps)->Toggle,CreateStat:(self:Group,props:StatProps)->Stat,CreateSlider:(self:Group,props:
SliderProps)->Slider,CreateDropdown:(self:Group,props:DropdownProps)->Dropdown,CreateSection:(self:Group,props:
SectionProps)->Section,CreateGroup:(self:Group,props:GroupProps?)->Group}export type Tab={CreateButton:(self:Tab,props:
ButtonProps)->Button,CreateToggle:(self:Tab,props:ToggleProps)->Toggle,CreateSwitch:(self:Tab,props:ToggleProps)->Toggle
,CreateSlider:(self:Tab,props:SliderProps)->Slider,CreateDropdown:(self:Tab,props:DropdownProps)->Dropdown,CreateInput:(
self:Tab,props:InputProps)->Input,CreateKeybind:(self:Tab,props:KeybindProps)->Keybind,CreateColorPicker:(self:Tab,props
:ColorPickerProps)->ColorPicker,CreateStat:(self:Tab,props:StatProps)->Stat,CreateSection:(self:Tab,props:SectionProps
)->Section,CreateGroup:(self:Tab,props:GroupProps?)->Group}export type Window={unloaded:boolean,CreateTab:(self:Window,
props:TabProps)->Tab,CreateTag:(self:Window,props:TagProps)->Tag,Notify:(self:Window,props:NotifyProps)->(),Toast:(self:
Window,props:ToastProps)->(),Popup:(self:Window,props:PopupProps)->Popup,Show:(self:Window)->(),Hide:(self:Window)->(),
ToggleHide:(self:Window)->(),ToggleMinimise:(self:Window)->(),Navigate:(self:Window,tab:string|Tab)->(),ChangeTheme:(
self:Window,theme:Theme)->(),SetLocale:(self:Window,localeId:string)->(),SetTranslator:(self:Window,translator:
Translator?)->(),RegisterTranslations:(self:Window,translations:Translations)->(),Save:(self:Window,name:string?)->
boolean,Load:(self:Window,name:string?)->boolean,ListConfigs:(self:Window)->{string},DeleteConfig:(self:Window,name:
string)->boolean,Unload:(self:Window)->()}export type Volcano={CreateWindow:(self:Volcano,props:WindowProps)->Window}
return{}end)()end,[33]=function()local aa, ab, ac=a(33)return(function(...)local ad,al=ac(ab.Parent.variables),{}
al.enabled=false type HapticTypes={click:Enum.HapticEffectType?,notify:Enum.HapticEffectType?}local am:HapticTypes,an,ao
={},pcall(function()Instance.new'HapticEffect':Destroy()return{click=Enum.HapticEffectType.UIHover,notify=Enum.
HapticEffectType.UIClick}end)if an then am=ao end local ap:{[Enum.HapticEffectType]:Instance},aq:Instance?={}function al
.setContainer(ar:Instance?)aq=ar end function al.releaseContainer(ar:Instance?)if ar==nil or aq==ar then aq=nil end end local
function b():Instance if aq and aq.Parent then return aq end return ad.guiContainer end local function c(ar:Enum.
HapticEffectType):Instance?local as=ap[ar]if as and as.Parent then return as end local at,au=pcall(Instance.new,'HapticEffect')
if not at then return nil end local av=au::any av.Type=ar local aw=pcall(function()au.Parent=b()end)if not aw then au:Destroy()
return nil end ap[ar]=au return au end local function d(ar:Enum.HapticEffectType?)if not ar or not al.enabled then return end
local as=c(ar)if as then local at=as::any pcall(at.Play,as)end end function al.click()d(am.click)end function al.notify()d(am.
notify)end function al.setEnabled(ar:boolean?)al.enabled=ar and true or false if not al.enabled then al.teardown()end end
function al.teardown()for ar,as in ap do pcall(as.Destroy,as)ap[ar]=nil end end return al end)()end,[34]=function()local aa, 
ab, ac=a(34)return(function(...)local ad,al=ac(ab.Parent.network),ac(ab.Parent.log)export type AssetId=number|
string export type AssetDownloadUrl=string export type CacheKey=AssetId export type ResolvedAsset=AssetId export type
AssetRequestPayload={Url:string,Method:string}local am={Enum={AssetDownloadUrl={RobloxDownloadUrl=
'https://assetdelivery.roblox.com/v1/asset/?id=%d'::AssetDownloadUrl,RoProxyDownloadUrl=
'https://assetdelivery.roproxy.com/v1/asset?id=%d'::AssetDownloadUrl}}}am.__index=am am.__type='assetResolver'type
AssetResolverState={contentCache:{[CacheKey]:string}?,contentCacheOrder:{CacheKey}?,contentDownloadUrl:AssetDownloadUrl}
export type AssetResolver=AssetResolverState&{resolve:(self:AssetResolver,value:unknown)->ResolvedAsset?,
getAssetContentFromUrl:(self:AssetResolver,url:string,cacheKey:CacheKey?,forced:boolean?)->string?,getAssetContentFromId
:(self:AssetResolver,id:AssetId,forced:boolean?)->string?}local an=8 function am.new(ao:boolean?,ap:AssetDownloadUrl?):
AssetResolver local aq:{[CacheKey]:string}?=if ao then{}else nil local ar=setmetatable({contentCache=aq,contentCacheOrder
=if ao then{}::{CacheKey}else nil,contentDownloadUrl=ap or am.Enum.AssetDownloadUrl.RobloxDownloadUrl}::
AssetResolverState,am)::any return ar end function am.resolve(ao:AssetResolver,ap:unknown):ResolvedAsset?if type(ap)==
'number'then return ap end if type(ap)~='string'then return nil end if string.sub(ap,1,11)=='rbxasset://'or string.sub(
ap,1,11)=='rbxthumb://'then return ap end local aq=tonumber(string.match(ap,'^rbxassetid://(%d+)$'))if aq then return aq
end return nil end local function ai(ao:unknown):boolean if type(ao)~='table'then return false end local ap=ao::{Body:
unknown,StatusCode:unknown,Success:unknown}local aq=ap.Body if type(aq)~='string'or#aq==0 then return false end if type(ap.
StatusCode)=='number'then local ar=ap.StatusCode::number return ar>=200 and ar<300 end if type(ap.Success)=='boolean'then
return ap.Success::boolean end return false end function am.getAssetContentFromUrl(ao:AssetResolver,ap:string,aq:CacheKey
?,ar:boolean?):string?local as=ao.contentCache if aq~=nil and as and not ar then local at=as[aq]if at then return at end end local
at=ad.getRequestFn()if not at then al.warn'No request function available to download asset content.'return nil end local au
,av=pcall(at,{Url=ap,Method='GET'}::AssetRequestPayload)local aw:string?if au and ai(av)then local ax=(av::{Body:string}).Body
aw=ax if aq~=nil and as then local ay=ao.contentCacheOrder if ay and as[aq]==nil then table.insert(ay,aq)local az=if#ay>an then
table.remove(ay,1)else nil if az~=nil then as[az]=nil end end as[aq]=ax end elseif not ar then al.warn(
'Failed to download asset content for url: '..tostring(ap))end return aw end function am.getAssetContentFromId(ao:
AssetResolver,ap:AssetId,aq:boolean?):string?local ar=ao:resolve(ap)if not ar or type(ar)~='number'then al.warn(
'Invalid asset id: '..tostring(ar))return nil end local as=string.format(ao.contentDownloadUrl,ar)return ao:
getAssetContentFromUrl(as,ar,aq)end return am end)()end,[35]=function()a(35)return(function(...)
local aa={}function aa.contrastColor(ab:Color3):Color3 local ac=0.299*ab.R+0.587*ab.G+0.114*ab.B return if ac>0.5 then
Color3.fromRGB(0,0,0)else Color3.fromRGB(255,255,255)end function aa.toColorSequence(ab:Color3|ColorSequence):
ColorSequence return if typeof(ab)=='ColorSequence'then ab else ColorSequence.new(ab)end function aa.contrastText(ab:
Color3):Color3 local ac=0.299*ab.R+0.587*ab.G+0.114*ab.B return if ac>0.6 then Color3.fromRGB(20,20,20)else Color3.
fromRGB(255,255,255)end return aa end)()end,[36]=function()a(36)return(function(...)local aa={}
aa.fontAsset='rbxassetid://12187365364'aa.pillResizeInfo=TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out)aa.icons={close=83277910885129,minimise=108115485663409,maximise=88738500661569,settings=
129180860773723,search=100604009889706,chevron=88479147175134,check=125626312718314,dot=91452555903853,colorpicker=
91452555903853,banner=111263549366178,config=125823673784681,volcano=80387863064905}aa.accent={on=Color3.fromRGB(23,153,
110),onStroke=Color3.fromRGB(32,201,144)}aa.statAccents={positive={fill=ColorSequence.new(Color3.fromRGB(0,170,127),
Color3.fromRGB(0,134,98)),stroke=ColorSequence.new(Color3.fromRGB(0,213,156),Color3.fromRGB(0,189,135))},negative={fill=
ColorSequence.new(Color3.fromRGB(172,47,47),Color3.fromRGB(135,37,37)),stroke=ColorSequence.new(Color3.fromRGB(255,75,75
),Color3.fromRGB(244,67,67))},neutral={fill=ColorSequence.new(Color3.fromRGB(0,170,127),Color3.fromRGB(0,134,98)),stroke
=ColorSequence.new(Color3.fromRGB(0,213,156),Color3.fromRGB(0,189,135))}}aa.zIndex={bottomFade=100,notification=1500,
drag=1000,toast=2000,toastContent=2001,restoreContent=100001,restoreInteract=100002}aa.displayOrder={window=99999,banner
=100000,popup=100001}return aa end)()end,[37]=function()a(37)return(function(...)local aa={}
function aa.itemFromValue(ab,ac)local ad,al=pcall(function()return ab:FromValue(ac)end)if ad and al then return al end
local am,an=pcall(function()return ab:GetEnumItems()end)if not am then return nil end for ao,ap in an do if ap.Value==ac
then return ap end end return nil end return aa end)()end,[38]=function()local aa, ab, ac=a(38)return(function(...
)local ad,al=ac(ab.Parent.services),{}local am=ad.getService'RunService':IsStudio()local an=not am and typeof(writefile)
=='function'if an then function al.writefile(ao:string,ap:string)writefile(ao,ap)end function al.readfile(ao:string):
string return readfile(ao)end function al.appendfile(ao:string,ap:string)appendfile(ao,ap)end function al.isfile(ao:
string):boolean return isfile(ao)end function al.delfile(ao:string)delfile(ao)end function al.listfiles(ao:string):{
string}return listfiles(ao)end function al.makefolder(ao:string)makefolder(ao)end function al.isfolder(ao:string):
boolean return isfolder(ao)end function al.delfolder(ao:string)delfolder(ao)end elseif am then local ao=Instance.new
'Folder'ao.Name='Filesystem'ao.Parent=ad.getService'ReplicatedStorage'local function aj(ap:string):{string}local aq={}for
ar in string.gmatch(ap,'[^/]+')do table.insert(aq,ar)end return aq end local function ak(ap:{string},aq:boolean):Instance?
local ar:Instance=ao for as=1,#ap-1 do local at=ar:FindFirstChild(ap[as])if not at then if not aq then return nil end local au=
Instance.new'Folder'au.Name=ap[as]au.Parent=ar at=au end ar=at::Instance end return ar end local function b(ap:Instance?):
StringValue?if ap and ap:IsA'StringValue'then return ap end return nil end function al.writefile(ap:string,aq:string)local ar=
aj(ap)assert(#ar>0,'Invalid path')local as=ak(ar,true)assert(as,'Invalid path')local at=ar[#ar]local au=as:FindFirstChild(at)local
av=b(au)if av then av.Value=aq else if au then au:Destroy()end local aw=Instance.new'StringValue'aw.Name=at aw.Value=aq aw.Parent=as
end end function al.readfile(ap:string):string local aq=aj(ap)assert(#aq>0,'Invalid path')local ar=ak(aq,false)assert(ar,
'File not found: '..ap)local as=ar:FindFirstChild(aq[#aq])local at=b(as)assert(at,'File not found: '..ap)return at.Value end
function al.appendfile(ap:string,aq:string)local ar=aj(ap)assert(#ar>0,'Invalid path')local as=ak(ar,false)assert(as,
'File not found: '..ap)local at=as:FindFirstChild(ar[#ar])local au=b(at)assert(au,'File not found: '..ap)au.Value=au.Value..aq end
function al.isfile(ap:string):boolean local aq=aj(ap)if#aq==0 then return false end local ar=ak(aq,false)if not ar then return
false end return b(ar:FindFirstChild(aq[#aq]))~=nil end function al.listfiles(ap:string):{string}local aq,ar:Instance=aj(ap),ao
for as,at in aq do local au=ar:FindFirstChild(at)if not au or not au:IsA'Folder'then error('Folder not found: '..ap)end ar=au end
local as:{string}={}for at,au in ar:GetChildren()do table.insert(as,ap..'/'..au.Name)end return as end function al.delfile(ap:
string)local aq=aj(ap)assert(#aq>0,'Invalid path')local ar=ak(aq,false)assert(ar,'File not found: '..ap)local as=ar:
FindFirstChild(aq[#aq])local at=b(as)assert(at,'File not found: '..ap)at:Destroy()end function al.makefolder(ap:string)local aq=
aj(ap)if#aq==0 then return end local ar:Instance=ao for as,at in aq do local au=ar:FindFirstChild(at)if not au then local av=
Instance.new'Folder'av.Name=at av.Parent=ar au=av end ar=au::Instance end end function al.isfolder(ap:string):boolean local aq=aj(
ap)if#aq==0 then return false end local ar:Instance=ao for as,at in aq do local au=ar:FindFirstChild(at)if not au or not au:IsA
'Folder'then return false end ar=au end return true end function al.delfolder(ap:string)local aq=aj(ap)assert(#aq>0,
'Invalid path')local ar=ak(aq,false)assert(ar,'Folder not found: '..ap)local as=ar:FindFirstChild(aq[#aq])assert(as and as:IsA
'Folder','Folder not found: '..ap)as:Destroy()end end function al.ensureFolder(ao:string)if not al.isfolder(ao)then al.
makefolder(ao)end end function al.ensureDir(ao:string)local ap=''for aq in string.gmatch(ao,'[^/]+')do ap=if ap==''then
aq else ap..'/'..aq if not al.isfolder(ap)then al.makefolder(ap)end end end return al end)()end,[39]=function()local aa, 
ab, ac=a(39)return(function(...)local ad,al,am,an=ac(ab.Parent.filesystem),ac(ab.Parent.path),'Volcano',{}an.
__index=an export type FileSystemManager={root:string,assets:string,getPath:(self:FileSystemManager,subpath:string?)->
string,getAssetsFolder:(self:FileSystemManager,subfolder:string?)->string,getRootFolder:(self:FileSystemManager)->string
}function an.new(ao:string?):FileSystemManager local ap=ao or am local aq=setmetatable({root=ap,assets=ap..'/Assets'},an
)::any pcall(ad.ensureFolder,aq.root)pcall(ad.ensureFolder,aq.assets)return aq end function an.getPath(ao,ap:string?):
string return al.join(ao.root,ap)end function an.getAssetsFolder(ao,ap:string?):string if ap then local aq=al.join(ao.
assets,ap)pcall(ad.ensureFolder,aq)return aq end return ao.assets end function an.getRootFolder(ao):string return ao.
root end return an end)()end,[40]=function()a(40)return(function(...)local aa,ab,ac={},
2166136261,16777619 local function ah(ad:string):number local al=ab for am=1,#ad do al=bit32.bxor(al,string.byte(ad,am))
local an=al%65536 local ao=(al-an)/65536 al=(((ao*ac)%65536)*65536+an*ac)%4294967296 end return al end function aa.
deriveFlagFromName(ad:string):string local al=ad:gsub('(%S+)',function(al:string):string return al:sub(1,1):upper()..al:
sub(2,-1)end):gsub('[^%w]','')if al==''and ad~=''then return string.format('Flag%08x',ah(ad))end return al end return aa
end)()end,[41]=function()local aa, ab, ac=a(41)return(function(...)local ad=ac(ab.Parent.services)local al,am,an,
ao,ap,aq=ad.getService'HttpService',ad.getService'RunService',ac(ab.Parent.filesystem),ac(ab.Parent.assetResolver),ac(ab
.Parent.log),ac(ab.Parent.path)local function b(ar:unknown):string?local as,at=pcall(function()return al:JSONEncode(ar)end)
if as and type(at)=='string'then return at else ap.warn('Failed to encode JSON:',at)return nil end end local function c(ar:
string):unknown?local as,at=pcall(function()return al:JSONDecode(ar)end)if as then return at else ap.warn(
'Failed to decode JSON:',at)return nil end end local ar={}ar.__type='fontManager'export type FontFace={name:string,family:
string,weight:number,style:string,assetId:string}export type FontManifest={name:string,faces:{FontFace}}export type
CachedFont={customId:number|string,manifest:FontManifest,loadedFromDisk:boolean,variants:{[string]:Font}}export type
FontCache={[number]:CachedFont}export type FontResolverOptions={fallbackFont:Font?,saveToDisk:boolean?,skipCache:boolean
?}type FontManagerState={_debug:boolean,rootFolder:string,assetResolver:ao.AssetResolver,defaultOptions:
FontResolverOptions,fontCache:FontCache?}export type FontManager=FontManagerState&{resolve:(self:FontManager,id:number|
string)->Font?,loadFont:(self:FontManager,id:(number|string)?,fontWeight:Enum.FontWeight?,fontStyle:Enum.FontStyle?,
saveToDisk:boolean?,skipCache:boolean?)->Font?,getFontFromId:(self:FontManager,id:number|string)->Font?}export type
fontManager=FontManager local function e(as:unknown):FontManifest?local at=as::any if type(at)~='table'or type(at.name)~=
'string'or type(at.faces)~='table'then return nil end at.name=aq.sanitizeFile(at.name)if#at.name==0 or#at.faces==0 then
return nil end for au,av in at.faces do if type(av)~='table'or type(av.name)~='string'or type(av.assetId)~='string'then return
nil end av.name=aq.sanitizeFile(av.name)if#av.name==0 then return nil end end return at::FontManifest end local as={
'\0\1\0\0','OTTO','true','ttcf','wOFF','wOF2'}local function g(at:string):boolean for au,av in as do if string.sub(at,1,#av)==
av then return true end end return false end local at=getfenv()local function i(au:Enum.FontWeight,av:Enum.FontStyle):string
return tostring(au)..'|'..tostring(av)end local function j(au:unknown):number?if type(au)=='number'then return au end if
type(au)=='string'then return tonumber(au)end return nil end function ar.__index(au:FontManagerState,av:unknown):unknown
local aw=(ar::any)[av]if aw~=nil then return aw end local ax=j(av)if not ax then return nil end local ay=au.fontCache if ay then
local az=ay[ax]if az then local aA=i(Enum.FontWeight.Regular,Enum.FontStyle.Normal)local aB=az.variants and az.variants[aA]if aB
then return aB end for aC,aD in pairs(az.variants or{})do return aD end end end return nil end function ar.new(au:string,av:
boolean?,aw:boolean?,ax:ao.AssetDownloadUrl?,ay:FontResolverOptions?):FontManager local az=ay or{saveToDisk=true,skipCache=
not aw or false,fallbackFont=Font.fromEnum(Enum.Font.SourceSans)}local aA=setmetatable({rootFolder=au,fontCache=if aw then{}
::FontCache else nil,assetResolver=ao.new(aw,ax),defaultOptions=az,_debug=av or am:IsStudio()or false}::FontManagerState,ar)
::any pcall(an.ensureFolder,au)return aA end function ar.loadFont(au:FontManager,av:(number|string)?,aw:Enum.FontWeight?,ax:
Enum.FontStyle?,ay:boolean?,az:boolean?):Font?if ay==nil then ay=au.defaultOptions.saveToDisk end if az==nil then az=au.
defaultOptions.skipCache end local aA,aB=aw or Enum.FontWeight.Regular,ax or Enum.FontStyle.Normal local aC,aD=i(aA,aB),au.
assetResolver:resolve(av)local aE=j(aD)if not aE then ap.warn('Invalid font id: '..tostring(av))return au.defaultOptions.
fallbackFont end local aF=au.fontCache if aF and not az then local aG=aF[aE]if aG then local aH=aG.variants and aG.variants[aC]if aH
then if au._debug then ap.print('Loaded font from cache for id: '..tostring(aE))end return aH end local aI,aJ=pcall(Font.new,
aG.customId::any,aA,aB)if aI and aJ then aG.variants=aG.variants or{}aG.variants[aC]=aJ if au._debug then ap.print(
'Loaded font variant from cache for id: '..tostring(aE))end return aJ else if au._debug then ap.warn(
'Failed to load font from cache for id: '..tostring(aE))end aF[aE]=nil return au.defaultOptions.fallbackFont end end end if
not ay then if au._debug then ap.warn[[Font loading without saving to disk can be detected by Anti-cheats.]]end return au.
defaultOptions.fallbackFont end local aG=au.rootFolder..'/'..aE..'.json'if typeof(an.isfile)~='function'then return au.
defaultOptions.fallbackFont end local aH,aI:string?=false if am:IsStudio()and au._debug then ap.warn
[[Font manifest loading is not supported in Studio. Using default font manifest for testing.]]aI=
[[{"name":"Inter","faces":[{"name":"Thin","weight":100,"style":"normal","assetId":"rbxassetid://12187277209"},{"name":"Extra Light","weight":200,"style":"normal","assetId":"rbxassetid://12187293441"},{"name":"Light","weight":300,"style":"normal","assetId":"rbxassetid://12187268450"},{"name":"Regular","weight":400,"style":"normal","assetId":"rbxassetid://12187266066"},{"name":"Medium","weight":500,"style":"normal","assetId":"rbxassetid://12187336822"},{"name":"Semi Bold","weight":600,"style":"normal","assetId":"rbxassetid://12187254443"},{"name":"Bold","weight":700,"style":"normal","assetId":"rbxassetid://12187275575"},{"name":"Extra Bold","weight":800,"style":"normal","assetId":"rbxassetid://12187267750"},{"name":"Black","weight":900,"style":"normal","assetId":"rbxassetid://12187359223"}]}]]
elseif an.isfile(aG)then local aJ,aK=pcall(an.readfile,aG)aI=aJ and aK or nil else aI=au.assetResolver:getAssetContentFromId(aE,
false)aH=aI~=nil end local aJ:FontManifest?if aI then local aK,aL=pcall(c,aI)if aK and aL then aJ=e(aL)else if au._debug then ap.
warn('Failed to parse font manifest for font id: '..tostring(aE)..'. Error: '..tostring(aL))end end else return au.
defaultOptions.fallbackFont end if not aJ then if au._debug then ap.warn('Font manifest is nil for font id: '..tostring(aE)
)end pcall(an.delfile,aG)return au.defaultOptions.fallbackFont end if aH and aI then pcall(an.writefile,aG,aI)end local aK,aL=au.
rootFolder..'/'..aJ.name,true if not pcall(an.ensureFolder,aK)then return au.defaultOptions.fallbackFont end for aM,aN in
ipairs(aJ.faces)do local aO=aK..'/'..aN.name:gsub(' ','-')..'.ttf'if not an.isfile(aO)then local aP=au.assetResolver:resolve(aN.
assetId)local aQ=if aP~=nil then au.assetResolver:getAssetContentFromId(aP,false)else nil if not aQ or not g(aQ)then aL=false
if au._debug then ap.warn('Font face content is missing or not a font for font id: '..tostring(aE)..', face: '..aN.name)end
continue end pcall(an.writefile,aO,aQ)end local aP,aQ=pcall(at.getcustomasset,aO)if aP and type(aQ)=='string'then aJ.faces[aM].
assetId=aQ if au._debug then ap.print('Loaded font face for id: '..tostring(aE)..', face: '..aN.name)end else aL=false if au.
_debug then ap.warn('Failed to load font face for id: '..tostring(aE)..', face: '..aN.name)end end end if not aL then
return au.defaultOptions.fallbackFont end local aM=b(aJ)if not aM or not pcall(an.writefile,aK..'/manifest.json',aM)then
return au.defaultOptions.fallbackFont end local aN,aO=pcall(at.getcustomasset,aK..'/manifest.json')if not aN or not aO then if
au._debug then ap.warn('Failed to load font manifest for id: '..tostring(aE))end return au.defaultOptions.fallbackFont end
local aP,aQ=pcall(Font.new,aO::any,aA,aB)if not aP or not aQ then if au._debug then ap.warn('Failed to load font for id: '..
tostring(aE))end return au.defaultOptions.fallbackFont end aF=au.fontCache if aF then aF[aE]={customId=aO,manifest=aJ,
loadedFromDisk=true,variants={[aC]=aQ}}if au._debug then ap.print('Cached font for id: '..tostring(aE))end end return aQ end
function ar.resolve(au:FontManager,av:number|string):Font?local aw=j(av)if not aw then return nil end local ax=au.fontCache if ax
then local ay=ax[aw]if ay then if au._debug then ap.print('Resolved font for id: '..tostring(aw))end for az,aA in pairs(ay.
variants or{})do return aA end end end return nil end function ar.getFontFromId(au:FontManager,av:number|string):Font?return
au:resolve(av)end return ar end)()end,[42]=function()local aa, ab, ac=a(42)return(function(...)local ad,al,am,an={},
ac(ab.Parent.textMetrics),ac(ab.Parent.colors),ac(ab.Parent.flagNames)ad.textWidth=al.textWidth ad.textHeight=al.
textHeight ad.deriveFlagFromName=an.deriveFlagFromName ad.contrastColor=am.contrastColor ad.toColorSequence=am.
toColorSequence ad.contrastText=am.contrastText return ad end)()end,[43]=function()local aa, ab, ac=a(43)return(
function(...)local ad,al=ac(ab.Parent.imageCache),ac(ab.Parent.variables)type AvatarCallback=ad.AvatarCallback type
PreloadCallback=ad.PreloadCallback local am={}am.rewrites=ad.rewrites am.onBlock=nil::((unknown)->())?type
PendingProperties={[string]:boolean}am.pending={}::{[number]:{[Instance]:PendingProperties}}local an,ao:{[string]:
boolean}=false,{Image=true,HoverImage=true,PressedImage=true}local function aj(ap:unknown):number?if type(ap)=='number'
then return ap elseif type(ap)=='string'then return tonumber(string.match(ap,'^rbxassetid://(%d+)$'))end return nil end
local function ak(ap:unknown):string if am.onBlock then am.onBlock(ap)end return''end function am.preload(ap:
PreloadCallback?):(boolean,number)an=false return ad.preload(function(aq)an=true table.clear(am.pending)if ap then ap(aq)end
end)end function am.avatar(ap:number,aq:AvatarCallback?):string if not al.secureMode then return`rbxthumb://type=AvatarHeadShot&id={
ap}&w=48&h=48`end return ad.avatar(ap,aq)end function am.assign(ap:Instance,aq:string,ar:unknown)local as=ap::any if not ao[aq]
then as[aq]=ar return end as[aq]=am.resolve(ar)if al.secureMode and not an then local at=aj(ar)if at and not am.rewrites[at]then
local au=am.pending[at]if not au then au=setmetatable({},{__mode='k'})::any am.pending[at]=au end local av=au[ap]if not av then av=
{}au[ap]=av end av[aq]=true end end end ad.onCached=function(ap:number)local aq=am.pending[ap]if not aq then return end local ar=
am.rewrites[ap]if ar then for as,at in aq do if as.Parent then local au=as::any for av in at do au[av]=ar end end end end am.pending[
ap]=nil end function am.resolve(ap:unknown):string if ap==nil or ap==0 or ap==''then return''end if type(ap)=='string'then if
string.sub(ap,1,11)=='rbxasset://'then return ap end if string.sub(ap,1,11)=='rbxthumb://'then return if al.secureMode then
ak(ap)else ap end end local aq:number?if type(ap)=='number'then aq=ap elseif type(ap)=='string'then aq=tonumber(string.match(ap,
'^rbxassetid://(%d+)$'))end local ar=if aq then am.rewrites[aq]else nil if ar then return ar end if al.secureMode then return
ak(ap)end if type(ap)=='number'then return'rbxassetid://'..ap end if type(ap)=='string'then return ap end return ak(ap)end
return am end)()end,[44]=function()local aa, ab, ac=a(44)return(function(...)local ad,al,am,an=ac(ab.Parent.
filesystem),ac(ab.Parent.path),ac(ab.Parent.variables),ac(ab.Parent.constants)export type RewriteMap={[number]:string}
export type CacheSettledCallback=(failed:number)->()export type PreloadCallback=CacheSettledCallback export type
AvatarCallback=(uri:string)->()export type OnCachedCallback=(id:number)->()export type ThumbnailEntry={state:string?,
imageUrl:string?}export type ThumbnailResponse={data:{ThumbnailEntry}?}local ao,ap,aq,ar,as,at,au,av:{[number]:string}={},am.
fileSystemManager:getRootFolder(),am.fileSystemManager:getAssetsFolder(),am.assetResolver,
[[https://raw.githubusercontent.com/SiriusSoftwareLtd/volcano-gen2/main/assets/]],48,
[[https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=%d&size=%dx%d&format=Png&isCircular=false]],{}for aw,ax
in an.icons do local ay=ax::number av[ay]=as..tostring(ay)..'.png'end local aw=0 for ax in av do aw+=1 end ao.rewrites={}::
RewriteMap ao.onCached=nil::OnCachedCallback?local ax='\137PNG\r\n\26\n'local function i(ay:string,az:string):string?if
type(getfenv().getcustomasset)~='function'or typeof(ad.isfile)~='function'then return nil end if not ad.isfile(ay)then
pcall(ad.ensureFolder,ap)pcall(ad.ensureFolder,aq)local aA=ar:getAssetContentFromUrl(az,ay,false)if not aA or string.sub(aA,1,
8)~=ax then return nil end if not pcall(ad.writefile,ay,aA)then return nil end end local aA,aB=pcall(getfenv().getcustomasset
,ay)return if aA and type(aB)=='string'then aB else nil end local function j(ay:number):string return al.join(aq,'avatar_'..
tostring(ay)..'.png')end local function k(ay:string):string?local az,aA=pcall(function()return am.httpService:JSONDecode(ay)
end)if not az or type(aA)~='table'then return nil end local aB=(aA::ThumbnailResponse).data if type(aB)~='table'then return
nil end local aC=aB[1]if type(aC)~='table'then return nil end local aD=aC::ThumbnailEntry if aD.state=='Completed'and type(aD.
imageUrl)=='string'then return aD.imageUrl end return nil end local function l(ay:number):string?local az:string?for aA=1,4
do local aB=ar:getAssetContentFromUrl(string.format(au,ay,at,at),'avatar:'..tostring(ay),aA>1)if aB then local aC=k(aB)if aC then az=
aC break end end task.wait(0.3)end if not az then return nil end return i(j(ay),az)end function ao.preload(ay:PreloadCallback
?):(boolean,number)local az=getfenv()if type(az.getcustomasset)~='function'or typeof(ad.isfile)~='function'then if ay then
task.defer(ay,aw)end return false,aw end local aA=ao.rewrites table.clear(aA)local function p()if not ay then return end local
aB=0 for aC in av do if not aA[aC]then aB+=1 end end ay(aB)end local aB,aC,aD=0,0,true for aE,aF in av do local aG,aH:string?=(al.join(
aq,tostring(aE)..'.png'))if ad.isfile(aG)then local aI,aJ=pcall(az.getcustomasset,aG)aH=if aI and type(aJ)=='string'then aJ else
nil end if aH then aA[aE]=aH else aC+=1 aB+=1 task.spawn(function()local aI=i(aG,aF)if aI then aA[aE]=aI if ao.onCached then pcall(ao
.onCached,aE)end end aB-=1 if aB==0 and not aD then p()end end)end end aD=false if aB==0 then p()end return aC==0,aC end
function ao.avatar(ay:unknown,az:AvatarCallback?):string if type(ay)~='number'then return''end if typeof(ad.isfile)~=
'function'then return''end local aA=j(ay)if ad.isfile(aA)then local aB,aC=pcall(getfenv().getcustomasset,aA)if aB and type(aC)==
'string'then return aC end end if az then task.spawn(function()local aB=l(ay)if aB then az(aB)end end)end return''end return ao
end)()end,[45]=function()local aa, ab, ac=a(45)return(function(...)local ad,al,am=ac(ab.Parent.variables),ac(ab.
Parent.log),{}export type LocaleToken={[any]:string}export type Translator=(source:string,localeId:string)->string?
export type TranslationTables={[string]:{[string]:string}}am.strings={}::TranslationTables am.current='en'am.translator=
nil::Translator?local an={}local function ai(ao:string):string return string.match(ao,'^(%a+)')or ao end function am.t(
ao:unknown):unknown if type(ao)~='string'or ao==''then return ao end return{[an]=ao}end function am.isToken(ao:unknown):
boolean return type(ao)=='table'and type((ao::{[any]:unknown})[an])=='string'end function am.sourceOf(ao:LocaleToken):
string return ao[an]end function am.resolve(ao:unknown):any if type(ao)~='string'then return ao end if am.translator
then local ap,aq=pcall(am.translator,ao,am.current)if ap and type(aq)=='string'and aq~=''then return aq end end local ap=am.
strings[am.current]if ap and ap[ao]then return ap[ao]end local aq=am.strings[ai(am.current)]if aq and aq[ao]then return aq[
ao]end return ao end function am.register(ao:TranslationTables?)if type(ao)~='table'then return end for ap,aq in ao do if
type(ap)=='string'and type(aq)=='table'then ap=string.lower(ap)local ar=am.strings[ap]if not ar then ar={}am.strings[ap]=ar
end for as,at in aq do if type(as)=='string'and type(at)=='string'then ar[as]=at else al.warn(`Volcano: skipping a '{ap}' translation, entries must be string to string.`
)end end end end end function am.setActive(ao:string?):string am.current=if type(ao)=='string'and ao~=''then string.
lower(ao)else'en'return am.current end function am.detect():string local ao=ad.localizationService.RobloxLocaleId if
type(ao)=='string'and ao~=''then return string.lower(ao)end return'en'end return am end)()end,[46]=function()local aa, ab, 
ac=a(46)return(function(...)local ad,al=ac(ab.Parent.runtime),{}type SuppressPredicate=()->boolean local
function ag():boolean return ad.secureMode end local am:SuppressPredicate,an:SuppressPredicate?=ag function al.
setSecureModeSource(ao:SuppressPredicate?)am=if type(ao)=='function'then ao else ag end function al.setSuppressPredicate
(ao:SuppressPredicate?)an=if type(ao)=='function'then ao else nil end local function aj():boolean if an and an()then
return true end return am()end function al.warn(...)if aj()then return end warn(...)end function al.print(...)if aj()
then return end print(...)end return al end)()end,[47]=function()a(47)return(function(...)local
function ae<T>(aa:T):T local ab=aa::any function ab.MoveTo(ac,ad:number)ac.tab:_moveElement(ac,ad)end function ab.
MoveToTop(ac)ac.tab:_moveElement(ac,1)end function ab.MoveToBottom(ac)ac.tab:_moveElement(ac,#ac.tab.elements)end
function ab.MoveUp(ac)local ad=table.find(ac.tab.elements,ac)if ad then ac.tab:_moveElement(ac,ad-1)end end function ab.
MoveDown(ac)local ad=table.find(ac.tab.elements,ac)if ad then ac.tab:_moveElement(ac,ad+1)end end return aa end return
ae end)()end,[48]=function()a(48)return(function(...)local aa={}aa.__index=aa export type
RequestFn=(...any)->any function aa.getRequestFn(ab:any?):RequestFn?ab=ab or getfenv()return ab.request or ab.
http_request or(ab.http and ab.http.request)or(ab.syn and ab.syn.request)or(ab.fluxus and ab.fluxus.request)end return
aa end)()end,[49]=function()local aa, ab, ac=a(49)return(function(...)local ad=ac(ab.Parent.variables)local al,am
=ad.textService,{}am.__index=am local an=20 local function ai(ao,ap,aq)local ar=Instance.new'GetTextBoundsParams'ar.Text=aq
ar.Font=ao ar.Size=ap ar.Width=math.huge local as,at=pcall(al.GetTextBoundsAsync,al,ar)return if as then at else Vector2.new(ap*
0.6,ap)end local ao={}local function ak(ap,aq)local ar=tostring(ap.Family)..'|'..tostring(ap.Weight)..'|'..tostring(ap.Style)
..'|'..tostring(aq)local as=ao[ar]if as then return as end local at,au={},0 for av=0,9 do local aw=math.ceil(ai(ap,aq,tostring(av)).
X)at[av]=aw if aw>au then au=aw end end as={advance=at,maxWidth=au}ao[ar]=as return as end function am.new(ap,aq,ar)ar=ar or{}local as=
setmetatable({window=ap,container=aq,textSize=ar.textSize or 16,transparency=ar.transparency or 1,duration=ar.duration or
0.55,slots={},length=0},am)as.roll=TweenInfo.new(as.duration,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)as.zIndex=math
.max(aq.ZIndex+1,6)as.height=math.ceil(as.textSize)local at=ak(ap.theme.Font,as.textSize)as.advance=at.advance as.maxWidth=at.
maxWidth ap:Create('UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.
Center,HorizontalAlignment=ar.alignment or Enum.HorizontalAlignment.Left,SortOrder=Enum.SortOrder.LayoutOrder,Padding=
UDim.new(0,0),Parent=aq})return as end function am._reel(ap,aq)local ar=ap.slots[aq]if ar.reel then return ar.reel end local as=ap.
window:Create('Frame',{Name='Reel',Size=UDim2.fromOffset(ap.maxWidth,ap.height),BackgroundTransparency=1,BorderSizePixel=0
,ClipsDescendants=true,ZIndex=ap.zIndex,Parent=ap.container})local at=ap.window:Create('Frame',{Size=UDim2.fromOffset(ap.
maxWidth,ap.height),AnchorPoint=Vector2.new(0.5,0),Position=UDim2.new(0.5,0,0,0),BackgroundTransparency=1,BorderSizePixel
=0,ZIndex=ap.zIndex,Parent=as})for au=0,an-1 do ap.window:Create('TextLabel',{Text=tostring(au%10),Position=UDim2.fromOffset(
0,au*ap.height),Size=UDim2.fromOffset(ap.maxWidth,ap.height),BackgroundTransparency=1,BorderSizePixel=0,TextSize=ap.textSize,
TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,TextTransparency=ap.transparency,
ZIndex=ap.zIndex,Parent=at},{TextColor3='ContentColor',FontFace='Font'})end local au={cell=as,strip=at,digit=0,target=0,
stripTween=nil,sizeTween=nil}ar.reel=au return au end function am._static(ap,aq)local ar=ap.slots[aq]if ar.static then return ar.
static end local as=ap.window:Create('TextLabel',{Name='Static',Size=UDim2.fromOffset(0,ap.height),AutomaticSize=Enum.
AutomaticSize.X,BackgroundTransparency=1,BorderSizePixel=0,TextSize=ap.textSize,TextXAlignment=Enum.TextXAlignment.Center
,TextYAlignment=Enum.TextYAlignment.Center,TextTransparency=ap.transparency,ZIndex=ap.zIndex,Parent=ap.container},{
TextColor3='ContentColor',FontFace='Font'})ar.static=as return as end local function b(ap)if ap.stripTween then ap.stripTween:
Cancel()ap.stripTween=nil end if ap.sizeTween then ap.sizeTween:Cancel()ap.sizeTween=nil end end function am._reelSnap(ap,aq,ar
)b(aq)aq.cell.Size=UDim2.fromOffset(ap.advance[ar],ap.height)aq.strip.Position=UDim2.new(0.5,0,0,-ar*ap.height)aq.digit=ar aq.
target=ar end function am._reelRoll(ap,aq,ar,as)if aq.stripTween or aq.sizeTween then ap:_reelSnap(aq,aq.target)end local at=aq.
digit if at==ar then return end local au,av if as then au=at av=at+(ar-at)%10 else au=at+10 av=au-(at-ar)%10 end aq.strip.Position=UDim2.
new(0.5,0,0,-au*ap.height)aq.target=ar local aw,ax=ad.tweenService:Create(aq.strip,ap.roll,{Position=UDim2.new(0.5,0,0,-av*ap.
height)}),ad.tweenService:Create(aq.cell,ap.roll,{Size=UDim2.fromOffset(ap.advance[ar],ap.height)})aq.stripTween=aw aq.sizeTween
=ax aw.Completed:Connect(function(ay)if ay==Enum.PlaybackState.Completed and aq.stripTween==aw then ap:_reelSnap(aq,ar)end end)aw:
Play()ax:Play()aq.digit=ar end function am._putDigit(ap,aq,ar,as,at)local au=ap:_reel(aq)local av=not au.cell.Visible au.cell.Visible=
true au.cell.LayoutOrder=-aq if ap.slots[aq].static then ap.slots[aq].static.Visible=false end if at and not av then ap:
_reelRoll(au,ar,as)else ap:_reelSnap(au,ar)end end function am._putStatic(ap,aq,ar)local as=ap:_static(aq)as.Text=ar as.Visible=true as.
LayoutOrder=-aq if ap.slots[aq].reel then ap.slots[aq].reel.cell.Visible=false end end function am._hide(ap,aq)local ar=ap.slots[
aq]if not ar then return end if ar.reel then ar.reel.cell.Visible=false end if ar.static then ar.static.Visible=false end end
function am._render(ap,aq,ar,as)aq=tostring(aq)if aq==ap._lastText then return end ap._lastText=aq local at={}for au,av in utf8.
codes(aq)do table.insert(at,utf8.char(av))end local au=#at for av=0,math.max(au,ap.length)-1 do ap.slots[av]=ap.slots[av]or{}if av<au
then local aw=at[au-av]if aw:match'%d'then ap:_putDigit(av,tonumber(aw),as,ar)else ap:_putStatic(av,aw)end else ap:_hide(av)end end ap.
length=au end function am.to(ap,aq,ar)ap:_render(aq,true,ar)end function am.snap(ap,aq)ap:_render(aq,false,true)end function am.
reveal(ap,aq,ar,as)ap.transparency=aq for at,au in ap.slots do if au.static and au.static.Visible then ap.window:_reveal(au.static,{
TextTransparency=aq},ar,as)end if au.reel then for av,aw in au.reel.strip:GetChildren()do if aw:IsA'TextLabel'then ap.window:
_reveal(aw,{TextTransparency=aq},ar,as)end end end end end return am end)()end,[50]=function()a(50)
return(function(...)type OrderedElement={main:GuiObject,descriptor:{main:GuiObject}?}local function ae(aa:OrderedElement
,ab:number)aa.main.LayoutOrder=ab if aa.descriptor then aa.descriptor.main.LayoutOrder=ab+1 end end return ae end)()end,
[51]=function()a(51)return(function(...)local aa={}function aa.join(ab:string,ac:string?):string
if not ac or ac==''then return ab end return ab..'/'..ac end local function af(ab:string):string local ac repeat ac=ab
ab=ab:gsub('%.%.','')until ab==ac return ab end function aa.sanitizeFolder(ab:unknown):string local ac=tostring(ab):
gsub('\\','/'):gsub('[:<>"|?*%c]','')ac=af(ac):gsub('/+','/')return(ac:gsub('^/+',''))end function aa.sanitizeFile(ab:
unknown):string local ac=tostring(ab):gsub('[/\\]',''):gsub('[:<>"|?*%c]','')return af(ac)end function aa.basename(ab:
unknown):string return tostring(ab):match'[^/\\]+$'or tostring(ab)end function aa.stripExtension(ab:unknown,ac:string?):
string if ac and ac~=''then local ad=tostring(ab)if ad:sub(-#ac)==ac then return ad:sub(1,-#ac-1)end return ad end local
ad=tostring(ab):match'^(.+)%.%w+$'return ad or tostring(ab)end return aa end)()end,[52]=function()local aa, ab, ac=a(52)
return(function(...)local ad,al,am={},ac(ab.Parent.persistenceConfig),ac(ab.Parent.persistenceSettings)ad.
getPath=al.getPath ad.save=al.save ad.load=al.load ad.applyTo=al.applyTo ad.list=al.list ad.delete=al.delete ad.
getSettingsPath=am.getSettingsPath ad.saveSettings=am.saveSettings ad.loadSettings=am.loadSettings return ad end)()end,[
53]=function()local aa, ab, ac=a(53)return(function(...)local ad,al,am,an,ao,ap,aq=ac(ab.Parent.variables),ac(ab.
Parent.filesystem),ac(ab.Parent.log),ac(ab.Parent.path),ac(ab.Parent.persistencePaths),ac(ab.Parent.persistenceWrite),{}
type PersistedControl={value:unknown,flag:string?,_canBeNil:boolean?,_serialize:((PersistedControl)->unknown)?,
_deserialize:((PersistedControl,unknown)->())?,Set:(PersistedControl,unknown)->()}type ConfigWindow={controls:{[string]:
PersistedControl},configuration:{fileName:string?,customFolder:string?},name:string,_loading:boolean?,_loadedConfig:{[
string]:unknown}?,_loadedConfigPath:string?}function aq.getPath(ar:ConfigWindow,as:unknown?):(string,string)return ao.
getConfigPath(ar,as)end function aq.save(ar:ConfigWindow,as:unknown?):boolean local at,au=aq.getPath(ar,as)local av:{[string]:
unknown}={}for aw,ax in ar.controls do local ay,az=pcall(function()local ay=ax._serialize if ay then return ay(ax)end return ax.
value end)if ay then av[aw]=az else am.warn("Volcano: Failed to serialize flag '"..tostring(aw).."' - "..tostring(az))end end
local aw=ar._loadedConfig if aw and ar._loadedConfigPath==au then for ax,ay in aw do if ar.controls[ax]==nil then av[ax]=ay end end
end local ax,ay=pcall(ad.httpService.JSONEncode,ad.httpService,av)if not ax then am.warn(
'Volcano: Failed to encode configuration - '..tostring(ay))return false end local az,aA=pcall(function()ap.write(at,au,ay)end)
if not az then am.warn('Volcano: Failed to save configuration - '..tostring(aA))return false end return true end local
function b(ar:string):({[string]:unknown}?,string?)if not al.isfile(ar)then return nil,nil end local as,at=pcall(al.readfile
,ar)if not as or type(at)~='string'then am.warn'Volcano: Failed to read configuration file'return nil,nil end local au,av=
pcall(ad.httpService.JSONDecode,ad.httpService,at)if not au or type(av)~='table'then return nil,at end return av::{[string]:
unknown},at end local function c(ar:string):string local as=an.stripExtension(ar,'.rfld')local at,au=as..
' (Incorrect Format).rfld',2 while au<=100 and al.isfile(at)do at=as..' (Incorrect Format '..au..').rfld'au+=1 end return at
end function aq.load(ar:ConfigWindow,as:unknown?):boolean local at,au=aq.getPath(ar,as)if typeof(al.isfile)~='function'then
return false end local av,aw=b(au)if not av and al.isfile(au)then local ax,ay=b(ap.tempPathFor(au))if ax and ay then av=ax pcall(ap.
write,at,au,ay)end end if not av then if aw then am.warn
[[Volcano: Configuration file has an invalid format, backing up and resetting]]local ax=c(au)pcall(function()al.ensureDir(
at)al.writefile(ax,aw)al.delfile(au)end)end return false end local ax,ay=av::{[string]:unknown},ar._loading ar._loading=true
local az,aA=pcall(function()for az,aA in ar.controls do aq.applyTo(aA,ax[az])end end)ar._loading=ay if not az then am.warn(
'Volcano: Failed to apply configuration - '..tostring(aA))end ar._loadedConfig=ax ar._loadedConfigPath=au return true end
function aq.applyTo(ar:PersistedControl,as:unknown)if as==nil and not ar._canBeNil then return end local at,au=pcall(function(
)local at=ar._deserialize if at then at(ar,as)else ar:Set(as)end end)if not at then am.warn("Volcano: Failed to restore flag '"..
tostring(ar.flag).."' - "..tostring(au))end end function aq.list(ar:ConfigWindow):{string}local as,at:{string}=aq.getPath(ar),
{}local au,av=pcall(al.listfiles,as)if not au or type(av)~='table'then return at end for aw,ax in av do local ay=an.basename(ax)if
ay:sub(-5)=='.rfld'then local az=an.stripExtension(ay,'.rfld')if az and az~=''and not az:find' %(Incorrect Format[^%)]*%)$'
then table.insert(at,az)end end end table.sort(at)return at end function aq.delete(ar:ConfigWindow,as:unknown):boolean if
type(as)~='string'or as==''then return false end local at, au=aq.getPath(ar,as)if typeof(al.isfile)~='function'or not al.
isfile(au)then return false end pcall(al.delfile,ap.tempPathFor(au))return(pcall(al.delfile,au))end return aq end)()end,[54
]=function()local aa, ab, ac=a(54)return(function(...)local ad,al,am=ac(ab.Parent.variables),ac(ab.Parent.path),{
}type ConfigWindow={configuration:{fileName:string?,customFolder:string?},name:string}function am.getConfigPath(an:
ConfigWindow,ao:unknown?):(string,string)local ap=ad.fileSystemManager:getPath'Configurations'if an.configuration.
customFolder then ap=al.join(ap,al.sanitizeFolder(an.configuration.customFolder))end local aq=ao or an.configuration.
fileName or an.name local ar=al.sanitizeFile(aq)if ar==''then ar=al.sanitizeFile(an.name)end if ar==''then ar='Configuration'
end return ap,al.join(ap,ar..'.rfld')end function am.getSettingsPath():(string,string)local an=ad.fileSystemManager:
getPath'Settings'return an,al.join(an,'volcano.rfld')end return am end)()end,[55]=function()local aa, ab, ac=a(55)
return(function(...)local ad,al,am,an,ao,ap=ac(ab.Parent.variables),ac(ab.Parent.filesystem),ac(ab.Parent.
persistencePaths),ac(ab.Parent.persistenceWrite),ac(ab.Parent.enums),{}type SettingsWindow={settings:{toggleKeybind:
EnumItem,mouseOverride:boolean,keepOnScreen:boolean,welcomeToast:boolean,haptics:boolean}}type DecodedSettings={
toggleKeybind:{[number]:unknown}?,mouseOverride:unknown?,keepOnScreen:unknown?,welcomeToast:unknown?,haptics:unknown?}
function ap.getSettingsPath():(string,string)return am.getSettingsPath()end function ap.saveSettings(aq:SettingsWindow):
boolean local ar,as=ap.getSettingsPath()local at:{[string]:unknown}={toggleKeybind={tostring(aq.settings.toggleKeybind.
EnumType),aq.settings.toggleKeybind.Value}::{unknown},mouseOverride=aq.settings.mouseOverride,keepOnScreen=aq.settings.
keepOnScreen,welcomeToast=aq.settings.welcomeToast,haptics=aq.settings.haptics}local au,av=pcall(ad.httpService.JSONEncode
,ad.httpService,at)if not au then return false end local aw=pcall(an.write,ar,as,av)if not aw then return false end return true
end local function ak(aq:string):(DecodedSettings?,string?)local ar=false pcall(function()ar=al.isfile(aq)end)if not ar then
return nil,nil end local as,at=pcall(al.readfile,aq)if not as or type(at)~='string'then return nil,nil end local au,av=pcall(ad
.httpService.JSONDecode,ad.httpService,at)if not au or type(av)~='table'then return nil,at end return av::DecodedSettings,at
end function ap.loadSettings(aq:SettingsWindow):boolean local ar,as=ap.getSettingsPath()local at=ak(as)if not at then local au,
av=ak(an.tempPathFor(as))if au and av then at=au pcall(an.write,ar,as,av)end end if not at then return false end if at.
toggleKeybind then pcall(function()local au=tostring(at.toggleKeybind[1]):gsub('^Enum%.','')local av=(Enum::any)[au]if av
then local aw=ao.itemFromValue(av,at.toggleKeybind[2])if aw then aq.settings.toggleKeybind=aw end end end)end if type(at.
mouseOverride)=='boolean'then aq.settings.mouseOverride=at.mouseOverride end if type(at.keepOnScreen)=='boolean'then aq.
settings.keepOnScreen=at.keepOnScreen end if type(at.welcomeToast)=='boolean'then aq.settings.welcomeToast=at.welcomeToast
end if type(at.haptics)=='boolean'then aq.settings.haptics=at.haptics end return true end return ap end)()end,[56]=function
()local aa, ab, ac=a(56)return(function(...)local ad,al,am=ac(ab.Parent.filesystem),{},'.saving'function al.
tempPathFor(an:string):string return an..am end function al.write(an:string,ao:string,ap:string)local aq=al.tempPathFor(
ao)ad.ensureDir(an)ad.writefile(aq,ap)if ad.readfile(aq)~=ap then error'parked copy did not write cleanly'end ad.
writefile(ao,ap)pcall(ad.delfile,aq)end return al end)()end,[57]=function()local aa, ab, ac=a(57)return(function(
...)local ad=ac(ab.Parent.services)export type RuntimeState={secureMode:boolean,coreGui:CoreGui,workspace:Workspace,
runService:RunService,userInputService:UserInputService,guiService:GuiService,localPlayer:Player?,tweenService:
TweenService,httpService:HttpService,textService:TextService,replicatedStorage:ReplicatedStorage,localizationService:
LocalizationService,guiContainer:Instance}local al={}::RuntimeState al.secureMode=(function()if typeof(getgenv)~=
'function'then return false end local am,an=pcall(function()return getgenv().VOLCANO_SECURE end)return am and an==true
end)()al.coreGui=ad.getService'CoreGui'::CoreGui al.workspace=ad.getService'Workspace'::Workspace al.runService=ad.
getService'RunService'::RunService al.userInputService=ad.getService'UserInputService'::UserInputService al.guiService=
ad.getService'GuiService'::GuiService al.localPlayer=(ad.getService'Players'::Players).LocalPlayer al.tweenService=ad.
getService'TweenService'::TweenService al.httpService=ad.getService'HttpService'::HttpService al.textService=ad.
getService'TextService'::TextService al.replicatedStorage=ad.getService'ReplicatedStorage'::ReplicatedStorage al.
localizationService=ad.getService'LocalizationService'::LocalizationService al.guiContainer=(function():Instance if al.
runService:IsStudio()then return(al.localPlayer::Player).PlayerGui end if typeof(gethui)=='function'then local am,an=
pcall(gethui)if am and an then return an end end return al.coreGui end)()return al end)()end,[58]=function()
a(58)return(function(...)local aa={}function aa.getService(ab)local ac=game:GetService(ab)return if cloneref
then cloneref(ac)else ac end return aa end)()end,[59]=function()local aa, ab, ac=a(59)return(function(...)local
ad=ac(ab.Parent.variables)local al,am,an:{[string]:number},ao,ap=ad.textService,{},{},0,1024 local function ak(aq:
GetTextBoundsParams):unknown local ar,as=pcall(function()return al:GetTextBoundsAsync(aq)end)return if ar then as else nil
end local function b(aq:unknown,ar:'X'|'Y'):number?if typeof(aq)=='Vector2'then return if ar=='X'then aq.X else aq.Y end if
type(aq)=='table'and type((aq::any)[ar])=='number'then return(aq::any)[ar]end return nil end function am.textWidth(aq:Font,ar:
number,as:any):number as=tostring(as)local at=tostring(aq.Family)..'|'..tostring(aq.Weight)..'|'..tostring(aq.Style)..'|'..
tostring(ar)..'|'..as local au=an[at]if au then return au end local av=Instance.new'GetTextBoundsParams'av.Text=as av.Font=aq av.
Size=ar av.Width=math.huge local aw=b(ak(av),'X')if not aw then local ax=utf8.len(as)or#as return math.ceil(ar*0.55*ax)end local ax
=math.ceil(aw)if ao>=ap then an={}ao=0 end an[at]=ax ao+=1 return ax end function am.textHeight(aq:Font,ar:number,as:any,at:
number):number local au=Instance.new'GetTextBoundsParams'au.Text=tostring(as)au.Font=aq au.Size=ar au.Width=at local av=b(ak(au),
'Y')return if av then math.ceil(av)else ar end return am end)()end,[60]=function()local aa, ab, ac=a(60)return(
function(...)local ad,al,am,an,ao,ap=ac(ab.Parent.runtime),ac(ab.Parent.constants),ac(ab.Parent.log),ac(ab.Parent.
filesystemManager),ac(ab.Parent.assetResolver),ac(ab.Parent.fontManager)type RuntimeState=ad.RuntimeState type
FileSystemManager=an.FileSystemManager type AssetResolver=ao.AssetResolver type FontManager=ap.FontManager export type
VariablesState=RuntimeState&{fallbackFont:Font,fileSystemManager:FileSystemManager,assetResolver:AssetResolver,
fontManager:FontManager,setFallbackFont:(font:Enum.Font|Font)->(),brandFont:(weight:Enum.FontWeight?)->Font}local aq=
table.clone(ad)::VariablesState am.setSecureModeSource(function()return aq.secureMode end)aq.fallbackFont=Font.fromEnum(
Enum.Font.BuilderSans)aq.fileSystemManager=an.new()aq.assetResolver=ao.new(true,ao.Enum.AssetDownloadUrl.
RoProxyDownloadUrl)::AssetResolver aq.fontManager=ap.new(aq.fileSystemManager:getAssetsFolder'fonts',false,true,ao.Enum.
AssetDownloadUrl.RoProxyDownloadUrl,{saveToDisk=true,skipCache=false,fallbackFont=aq.fallbackFont})::FontManager
function aq.setFallbackFont(ar:Enum.Font|Font)if typeof(ar)=='EnumItem'then ar=Font.fromEnum(ar)end if typeof(ar)=='Font'then
aq.fallbackFont=ar aq.fontManager.defaultOptions.fallbackFont=ar end end function aq.brandFont(ar:Enum.FontWeight?):Font if
aq.secureMode then return Font.new(aq.fallbackFont.Family,ar)end return Font.new(al.fontAsset,ar)end return aq end)()end,[
61]=function()a(61)return(function(...)local aa,ab,ac,ad,al,am,an,ao,ap,aq={},Vector2.new(475,500),
Vector2.new(300,285),0.86,0.7,24,28,80,1.95,200 aa.defaultSize=ab aa.minSize=ac local function e(ar:number):number return
math.clamp((ab.Y-ar)/(ab.Y-ac.Y),0,1)end function aa.fit(ar:Vector2?):UDim2 if not ar or ar.X<aq or ar.Y<aq then return UDim2.
fromOffset(ab.X,ab.Y)end local as,at=math.min(ar.X*ad,ar.X-am),math.min(ar.Y*al,ar.Y-an)local au=math.floor(math.min(math.
clamp(at,ac.Y,ab.Y),at))local av=e(au)local aw=math.max(ab.X+ao*av,ac.X)return UDim2.fromOffset(math.floor(math.min(aw,as,au*ap)),au
)end return aa end)()end},{{1,2,{'volcano'},{{32,1,{'utility'},{{37,2,{'enums'}},{56,2,{'persistenceWrite'}},{40,2,{
'flagNames'}},{50,2,{'ordering'}},{47,2,{'moveable'}},{36,2,{'constants'}},{60,2,{'variables'}},{44,2,{'imageCache'}},{
39,2,{'filesystemManager'}},{48,2,{'network'}},{61,2,{'windowSizing'}},{38,2,{'filesystem'}},{59,2,{'textMetrics'}},{34,
2,{'assetResolver'}},{58,2,{'services'}},{45,2,{'locale'}},{46,2,{'log'}},{57,2,{'runtime'}},{42,2,{'functions'}},{53,2,
{'persistenceConfig'}},{55,2,{'persistenceSettings'}},{35,2,{'colors'}},{33,2,{'HapticEngine'}},{43,2,{'image'}},{54,2,{
'persistencePaths'}},{41,2,{'fontManager'}},{51,2,{'path'}},{52,2,{'persistence'}},{49,2,{'odometer'}}}},{2,1,{
'components'},{{8,2,{'drag'}},{14,2,{'popup'}},{15,2,{'search'}},{21,2,{'toast'}},{3,2,{'action'}},{7,2,{'descriptor'}},
{12,2,{'keybind'}},{23,2,{'window'}},{22,2,{'toggle'}},{17,2,{'slider'}},{20,2,{'tag'}},{19,2,{'tab'}},{13,2,{
'notification'}},{5,2,{'chrome'}},{6,2,{'colorpicker'}},{16,2,{'section'}},{9,2,{'dropdown'}},{11,2,{'input'}},{4,2,{
'button'}},{10,2,{'group'}},{18,2,{'stat'}}}},{24,1,{'themes'},{{30,2,{'rose'}},{28,2,{'ember'}},{25,2,{'amethyst'}},{29
,2,{'frost'}},{27,2,{'default'}},{26,2,{'cobalt'}}}},{31,2,{'types'}}}}},'0.4.2','WaxRuntime',string,task,setmetatable,
error,next,table,unpack,coroutine,script,type,require,pcall,tostring,tonumber,_VERSION local aB,aC,aD,aE,aF,aG,aH=aq.insert,aq.
remove,aq.freeze or function(aB)return aB end,as.wrap,al.sub,al.match,al.gmatch if az and aF(az,1,4)=='Lune'then local aI,aJ=aw(av
,'@lune/task')if aI and aJ then am=aJ end end local aI=am and am.defer local aJ,aK,aL,aM,aN,aO,aP,aQ,aR=aI or function(aJ,...)aE(aJ)(...)
end,{[1]='Folder',[2]='ModuleScript',[3]='Script',[4]='LocalScript',[5]='StringValue'},{},{},{},{},{},{},{}local aS,aT={
GetFullName={{},function(aS)local aT,aU=aS.Name,aS.Parent while aU do aT=aU.Name..'.'..aT aU=aU.Parent end return aT end},
GetChildren={{},function(aS)local aT={}for aU in ap,aR[aS]do aB(aT,aU)end return aT end},GetDescendants={{},function(aS)local aT={}
for aU in ap,aR[aS]do aB(aT,aU)for aV,aW in ap,aU:GetDescendants()do aB(aT,aW)end end return aT end},FindFirstChild={{'string',
'boolean?'},function(aS,aT,aU)local aV=aR[aS]for aW in ap,aV do if aW.Name==aT then return aW end end if aU then for aW in ap,aV do
return aW:FindFirstChild(aT,true)end end end},FindFirstAncestor={{'string'},function(aS,aT)local aU=aS.Parent while aU do if aU.
Name==aT then return aU end aU=aU.Parent end end},WaitForChild={{'string','number?'},function(aS,aT)return aS:FindFirstChild(aT)
end}},{}for aU,aV in ap,aS do local aW,aX,aY=aV[1],aV[2],{}for aZ,a_ in ap,aW do local a0,a1=aG(a_,'^([^%?]+)(%??)')aY[aZ]={a0,a1}end aT[aU]=
function(aZ,...)if not aR[aZ]then ao("Expected ':' not '.' calling member function "..aU,2)end local a_={...}for a0,a1 in ap,aY
do local a2=a_[a0]local m,P,Q=au(a2),a1[1],a1[2]if a2==nil and not Q then ao('Argument '..a2 ..' missing or nil',3)end if P~='any'
and m~=P and not(m=='nil'and Q)then ao('Argument '..a0 ..' expects type "'..P..'", got "'..m..'"',2)end end return aX(aZ,...
)end end local function D(aU,aV,aW)local aX,aY=(an({},{__mode='k'}))local function J(aZ)ao(aZ..
' is not a valid (virtual) member of '..aU..' "'..aV..'"',3)end local function K(aZ)ao(
'Unable to assign (virtual) property '..aZ..'. Property is read only',3)end local aZ,a_={},{}a_.__metatable=false a_.__index=
function(a0,a1)if a1=='ClassName'then return aU elseif a1=='Name'then return aV elseif a1=='Parent'then return aW elseif aU==
'StringValue'and a1=='Value'then return aY else local a2=aT[a1]if a2 then return a2 end end for a2 in ap,aX do if a2.Name==a1 then
return a2 end end J(a1)end a_.__newindex=function(a0,a1,a2)if a1=='ClassName'then K(a1)elseif a1=='Name'then aV=a2 elseif a1==
'Parent'then if a2==aZ then return end if aW~=nil then aR[aW][aZ]=nil end aW=a2 if a2~=nil then aR[a2][aZ]=true end elseif aU==
'StringValue'and a1=='Value'then aY=a2 else J(a1)end end a_.__tostring=function()return aV end an(aZ,a_)aR[aZ]=aX if aW~=nil then aR[
aW][aZ]=true end return aZ end local function E(aU,aV)local aW,aX,aY,aZ=aU[1],aU[2],aU[3],aU[4]local a_=aK[aX]local a0=aY and aC(aY,1)or a_
local a1=D(a_,a0,aV)aL[aW]=a1 if aY then for a2,m in ap,aY do a1[a2]=m end end if aZ then for a2,m in ap,aZ do E(m,a1)end end return a1
end local aU=D('Folder','['..ad..']')for aV,aW in ap,ab do E(aW,aU)end for aV,aW in ap,aa do local aX=aL[aV]aM[aX]=aW aN[aX]=aV local aY=
aX.ClassName if aY=='LocalScript'or aY=='Script'then aB(aP,aX)end end local function G(aV)local aW,aX=aV.ClassName,aO[aV]if aX and aW
=='ModuleScript'then return ar(aX)end local aY=aM[aV]local function L(aZ)aZ=ax(aZ)local a_,a0,a1=aV:GetFullName(),aG(aZ,
'[^:]+:(%d+): (.+)')if not a0 or not aA then return a_..':*: '..(a1 or aZ)end a0=ay(a0)local a2=aN[aV]local m=aA[a2]local P=a0-m+1 if
P<0 then P='?'end return a_..':'..P..': '..a1 end if aW=='LocalScript'or aW=='Script'then local aZ,a_=aw(aY)if not aZ then ao(L(a_
),0)end else local aZ={aw(aY)}local a_=aC(aZ,1)if not a_ then local a0=aC(aZ,1)ao(L(a0),0)end aO[aV]=aZ return ar(aZ)end end function a
(aV)local aW=aL[aV]local function J(aX,...)local aY={aw(aX,...)}local aZ=aC(aY,1)if not aZ then ao(aY[1],3)end return ar(aY)end local
aX=aD(an({},{__index=aQ,__newindex=function(aX,aY,aZ)aQ[aY]=aZ end,__len=function()return#aQ end,__iter=function()return ap,aQ end}
))local aY,aZ=aD{version=ac,envname=ad,shared=aX,script=at,require=av},aW local function N(a_,...)local a0,a1,a2=au(a_),
'Attempted to call require with a non-ModuleScript','Attempted to call require with self'if a0=='table'and aR[a_]then if a_.
ClassName~='ModuleScript'then ao(a1,2)elseif a_==aW then ao(a2,2)end return G(a_)elseif a0=='string'and aF(a_,1,1)~='@'then if#a_
==0 then ao('Attempted to call require with empty string',2)end local m=aW if aF(a_,1,1)=='/'then m=aU elseif aF(a_,1,2)=='./'
then a_=aF(a_,3)end local P for Q in aH(a_,'([^/]*)/?')do local R=Q if Q=='..'then R='Parent'end if R~=''then local S=m:
FindFirstChild(R)if not S then local U=m.Parent if U then S=U:FindFirstChild(R)end end if S then m=S elseif Q~=P and Q~=
'init'and Q~='init.server'and Q~='init.client'then ao('Virtual script path "'..a_..'" not found',2)end end P=Q end if m.
ClassName~='ModuleScript'then ao(a1,2)elseif m==aW then ao(a2,2)end return G(m)end return J(av,a_,...)end return aY,aZ,N end
for aV,aW in ap,aP do aJ(G,aW)end return G(aU:GetChildren()[1])
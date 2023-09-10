#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
Gui, +hWndhMainWnd -MaximizeBox
Gui, Color, 0000FF
AnimateWindow(hWnd,Duration,Flag) {
Return DllCall("AnimateWindow","UInt",hWnd,"Int",Duration,"UInt",Flag)
}
FileRead, MapList, ValorantMapList.txt
StringReplace, MapList, MapList, `r,, All
FileRead, AgentList, ValorantAgentList.txt
StringReplace, AgentList, AgentList, `r,, All
Gui, +Delimiter`n
pblank = JPEG\AGENT_BLANK.png
Gui Font, s14 cWhite q3, Proxima Nova Bl
Gui Add, Text, vP1name x7 y20 w150 h20 center,
Gui Add, Text, vP2name x166 y20 w150 h20 center,
Gui Add, Text, vP3name x325 y20 w150 h20 center,
Gui Add, Text, vP4name x484 y20 w150 h20 center,
Gui Add, Text, vP5name x641 y20 w150 h20 center,
Gui Add, Text, vP6name x1125 y20 w150 h20 center,
Gui Add, Text, vP7name x1284 y20 w150 h20 center,
Gui Add, Text, vP8name x1443 y20 w150 h20 center,
Gui Add, Text, vP9name x1602 y20 w150 h20 center,
Gui Add, Text, vP10name x1762 y20 w150 h20 center,
Gui Font,
Gui Add, Edit,gUpdateName1 vP1edit x7 y290 w150, Player 1 Name
Gui Add, Edit,gUpdateName2 vP2edit x166 y290 w150, Player 2 Name
Gui Add, Edit,gUpdateName3 vP3edit x325 y290 w150, Player 3 Name
Gui Add, Edit,gUpdateName4 vP4edit x484 y290 w150, Player 4 Name
Gui Add, Edit,gUpdateName5 vP5edit x641 y290 w150, Player 5 Name
Gui Add, Edit,gUpdateName6 vP6edit x1125 y290 w150, Player 6 Name
Gui Add, Edit,gUpdateName7 vP7edit x1284 y290 w150, Player 7 Name
Gui Add, Edit,gUpdateName8 vP8edit x1443 y290 w150, Player 8 Name
Gui Add, Edit,gUpdateName9 vP9edit x1602 y290 w150, Player 9 Name
Gui Add, Edit,gUpdateName10 vP10edit x1762 y290 w150, Player 10 Name
Gui Add, Pic, HwndhPic1   x7      y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic2   x166    y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic3   x325    y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic4   x484    y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic5   x641    y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic6   x1125   y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic7   x1284   y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic8   x1443   y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic9   x1602   y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic10  x1759   y48 w150 h200, % pblank
Gui Add, Pic, HwndhPic11  x798   y0 w69 h40,
Gui Add, Pic, HwndhPic12  x870   y0 w69 h40,
Gui Add, Pic, HwndhPic13  x978   y0 w69 h40,
Gui Add, Pic, HwndhPic14  x1049   y0 w69 h40,
Gui Add, DropDownList,  gP1Select1 vC1   x7        y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select2 vC2   x166      y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select3 vC3   x325      y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select4 vC4   x484      y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select5 vC5   x641      y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select6 vC6   x1125     y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select7 vC7   x1284     y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select8 vC8   x1443     y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select9 vC9   x1602     y265 w152,%   AgentList
Gui Add, DropDownList,  gP1Select10 vC10  x1762    y265 w152,%   AgentList
Gui Add, Button,  gShowHelp Default x910 y270 w80 h22, Help
Gui Add, Button,gClearNames x830 y290 w80 h22, Clear Names
Gui Add, Button,gClearAllShort x910 y290 w80 h22, Clear All
Gui Add, Button,gClearAgents x990 y290 w80 h22, Clear Agents
Gui Add,Button, gfont x910 y310 w80 h22 ,Player Font
Gui Add,Button, gSside x910 y330 w80 h22 ,Swap Name
Gui Add,Button, gSsideTeam x830 y330 w80 h22 , Swap Team
Gui Add, Button,gSsideBoth x990 y330 w80 h22, Swap Both

Gui Add, DropDownList, gUpdateMap1 vMap1 x830 y354 w80 center , % MapList
Gui Add, DropDownList, gUpdateMap2 vMap2 x910 y354 w80 center , % MapList
Gui Add, DropDownList, gUpdateMap3 vMap3 x990 y354 w80 center , % MapList

Gui Font, q3 cWhite, Century Gothic
Gui Add, Text, vMap1Name x7 y545 w150 h20 center Border, MAP 1:
Gui Add, Text, vMap2Name x166 y545 w150 h20 center Border, MAP 2:
Gui Add, Text, vMap3Name x325 y545 w150 h20 center Border, DECIDER: 

Gui Font,
Gui Add, Edit,gUpdateTeam vTeamRedit x325 y330 w150 , Team Name Left
Gui Add, Edit,gUpdateTeam vTeamLedit x1443 y330 w150 , Team Name Right


Gui Font, s60 cWhite q3 bold, Proxima Nova Bl
Gui Add, Text, cb6ffe3 vTeamRname x7 y400 w950 Center Border , MERRYMART
Gui Add, Text, cff6161 vTeamLname x960 y400 w950 Center Border , MTECH


Gui Show, w1920 h570, Choco's VAL (Almost) All-in-one Overlays
;WinSet, TransColor, FFFFFF 255, Choco's VAL (Almost) All-in-one Overlays
Return

UpdateMap1:
Gui, Submit, NoHide
GuiControl,, Map1Name, MAP 1: %Map1%
Return
UpdateMap2:
Gui, Submit, NoHide
GuiControl,, Map2Name, MAP 2: %Map2%
Return
UpdateMap3:
Gui, Submit, NoHide
GuiControl,, Map3Name, DECIDER: %Map3%
Return
UpdateTeam:
Gui, Submit, NoHide
GuiControl,, TeamRname, % TeamRedit
GuiControl,, TeamLname, %TeamLedit%
Return
UpdateName1:
Gui, Submit, NoHide
GuiControl,, P1name, %P1edit%
Return
UpdateName2:
Gui, Submit, NoHide
GuiControl,, P2name, %P2edit%
Return
UpdateName3:
Gui, Submit, NoHide
GuiControl,, P3name, %P3edit%
Return
UpdateName4:
Gui, Submit, NoHide
GuiControl,, P4name, %P4edit%
Return
UpdateName5:
Gui, Submit, NoHide
GuiControl,, P5name, %P5edit%
Return
UpdateName6:
Gui, Submit, NoHide
GuiControl,, P6name, %P6edit%
Return
UpdateName7:
Gui, Submit, NoHide
GuiControl,, P7name, %P7edit%
Return
UpdateName8:
Gui, Submit, NoHide
GuiControl,, P8name, %P8edit%
Return
UpdateName9:
Gui, Submit, NoHide
GuiControl,, P9name, %P9edit%
Return
UpdateName10:
Gui, Submit, NoHide
GuiControl,, P10name, %P10edit%
Return
ShowHelp:
MsgBox,
    (LTrim
    Pre-requisites:
    - OBS Studio
    - Source Clone by Exceldro
    
    IMPORTANT!
	1. Make sure to crop the agent select window in OBS Studio (Alt+Click&Drag in OBS Studio)
    2. Apply a 0x0000FF (blue) color key filter and adjust accordingly
    
    How to use:
    1. Input player names | ATTACKER left, DEFENDER right side in lobby
    2. Set team names. Input boxes found under Player 3 and Player 8
    3. Select player picks in the dropdown based on in-game drafting screen
    4. (Optional) Set map picks for Bo3 in the dropdown under the "swap" Buttons
    5. (Optional) Swap player names, teams, or both using the swap Buttons. Note: Swapping teams also swap current score (if any)
    6. Reset using the Clear names, scores, agents, or all buttons
    7. Set scores by ticking the radio buttons corresponding to the number of wins
    
    
    
    Misc:
    - Make sure to fit the window in atleast 1080p wide screen. If a part of the screen is not visible, it will not be rendered in OBS
    - You may need to adjust sliders in color key filters for fine tuning (I found blue is the best for Color Keying)
    - You can use your own agent portraits by overwriting the images. Be sure to use 150*200px images or at least 3:4 vertical ratio. Currently only accepts image file formats. DO NOT CHANGE THE FILE NAMES OR ELSE IT WILL NOT LOAD
    
    
    If you liked this program, credit CHOCO! (twitter.com/choco_bclyn)
)
Return

Sside:
p1temp = %P1edit%
p2temp = %P2edit%
p3temp = %P3edit%
p4temp = %P4edit%
p5temp = %P5edit%
p6temp = %P6edit%
p7temp = %P7edit%
p8temp = %P8edit%
p9temp = %P9edit%
p10temp =  %P10edit%
Gui, Submit, NoHide
GuiControl,, P1name, %P6temp%
GuiControl,, P2name, %P7temp%
GuiControl,, P3name, %P8temp%
GuiControl,, P4name, %P9temp%
GuiControl,, P5name, %P10temp%
GuiControl,, P6name, %P1temp%
GuiControl,, P7name, %P2temp%
GuiControl,, P8name, %P3temp%
GuiControl,, P9name, %P4temp%
GuiControl,, P10name, %P5temp%
GuiControl,, P1edit, %P6temp%
GuiControl,, P2edit, %P7temp%
GuiControl,, P3edit, %P8temp%
GuiControl,, P4edit, %P9temp%
GuiControl,, P5edit, %P10temp%
GuiControl,, P6edit, %P1temp%
GuiControl,, P7edit, %P2temp%
GuiControl,, P8edit, %P3temp%
GuiControl,, P9edit, %P4temp%
GuiControl,, P10edit, %P5temp%

if SetBoth = 1 
Goto SsideTeam

Return

SsideBoth:
SetBoth := 1
Goto Sside
Return

SsideTeam:
tRtemp = %TeamRedit%
tLtemp = %TeamLedit%
Gui, Submit, NoHide
GuiControl,, TeamRedit, %tLtemp%
GuiControl,, TeamLedit, %tRtemp%
GuiControl,, TeamRname, %tLtemp%
GuiControl,, TeamLname, %tRtemp%
SetBoth = 0
Return

ClearAllShort:
ClearNames()
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic1)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic2)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic3)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic4)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic5)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic6)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic7)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic8)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic9)
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic10)
Imagen("JPEG\BannedAgent\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic11)
Imagen("JPEG\BannedAgent\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic12)
Imagen("JPEG\BannedAgent\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic13)
Imagen("JPEG\BannedAgent\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic14)
Return

font:
fontObj := FontSelect(fontObj,GuiHwnd)
If (!fontObj)
return
Gui, Font, % fontObj["str"], % fontObj["name"]
GuiControl, Font, P1name
GuiControl, Font, P2name
GuiControl, Font, P3name
GuiControl, Font, P4name
GuiControl, Font, P5name
GuiControl, Font, P6name
GuiControl, Font, P7name
GuiControl, Font, P8name
GuiControl, Font, P9name
GuiControl, Font, P10name
return
FontSelect(fontObject:="",hwnd:=0,effects:=1) {
fontObject := (fontObject="") ? Object() : fontObject
VarSetCapacity(logfont,60)
uintVal := DllCall("GetDC","uint",0)
LogPixels := DllCall("GetDeviceCaps","uint",uintVal,"uint",90)
Effects := 0x041 + (Effects ? 0x100 : 0)
fntName := fontObject.HasKey("name") ? fontObject["name"] : ""
fontBold := fontObject.HasKey("bold") ? fontObject["bold"] : 0
fontBold := fontBold ? 700 : 400
fontItalic := fontObject.HasKey("italic") ? fontObject["italic"] : 0
fontUnderline := fontObject.HasKey("underline") ? fontObject["underline"] : 0
fontStrikeout := fontObject.HasKey("strike") ? fontObject["strike"] : 0
fontSize := fontObject.HasKey("size") ? fontObject["size"] : 10
fontSize := fontSize ? Floor(fontSize*LogPixels/72) : 16
c := fontObject.HasKey("color") ? fontObject["color"] : 0
c1 := Format("0x{:02X}",(c&255)<<16)
c2 := Format("0x{:02X}",c&65280)
c3 := Format("0x{:02X}",c>>16)
fontColor := Format("0x{:06X}",c1|c2|c3)
fontval := Object(16,fontBold,20,fontItalic,21,fontUnderline,22,fontStrikeout,0,fontSize)
for a,b in fontval
NumPut(b,logfont,a)
cap:=VarSetCapacity(choosefont,A_PtrSize=8?103:60,0)
NumPut(hwnd,choosefont,A_PtrSize)
offset1 := (A_PtrSize = 8) ? 24 : 12
offset2 := (A_PtrSize = 8) ? 36 : 20
offset3 := (A_PtrSize = 4) ? 6 * A_PtrSize : 5 * A_PtrSize
fontArray := Array([cap,0,"Uint"],[&logfont,offset1,"Uptr"],[effects,offset2,"Uint"],[fontColor,offset3,"Uint"])
for index,value in fontArray
NumPut(value[1],choosefont,value[2],value[3])
if (A_PtrSize=8) {
strput(fntName,&logfont+28)
r := DllCall("comdlg32\ChooseFont","uptr",&CHOOSEFONT,"cdecl")
fntName := strget(&logfont+28)
} else {
strput(fntName,&logfont+28,32,"utf-8")
r := DllCall("comdlg32\ChooseFontA","uptr",&CHOOSEFONT,"cdecl")
fntName := strget(&logfont+28,32,"utf-8")
}
if !r
return false
fontObj := Object("bold",16,"italic",20,"underline",21,"strike",22)
for a,b in fontObj
fontObject[a] := NumGet(logfont,b,"UChar")
fontObject["bold"] := (fontObject["bold"] < 188) ? 0 : 1
c := NumGet(choosefont,A_PtrSize=4?6*A_PtrSize:5*A_PtrSize)
c1 := Format("0x{:02X}",(c&255)<<16)
c2 := Format("0x{:02X}",c&65280)
c3 := Format("0x{:02X}",c>>16)
c := Format("0x{:06X}",c1|c2|c3)
fontObject["color"] := c
fontObject["size"] := NumGet(choosefont,A_PtrSize=8?32:16,"UInt")//10
fontHwnd := DllCall("CreateFontIndirect","uptr",&logfont)
fontObject["name"] := fntName
If (!fontHwnd) {
fontObject := ""
return 0
} Else {
fontObject["hwnd"] := fontHwnd
b := fontObject["bold"] ? "bold" : ""
i := fontObject["italic"] ? "italic" : ""
s := fontObject["strike"] ? "strike" : ""
c := fontObject["color"] ? "c" fontObject["color"] : ""
z := fontObject["size"] ? "s" fontObject["size"] : ""
u := fontObject["underline"] ? "underline" : ""
fullStr := b "|" i "|" s "|" c "|" z "|" u
Loop Parse, fullStr, |
If (A_LoopField)
str .= A_LoopField " "
fontObject["str"] := "norm " Trim(str)
return fontObject
}
}
P1Select1:
Gui, Submit, NoHide
Player(hPic1, C1)
Return
P1Select2:
Gui, Submit, NoHide
Player(hPic2, C2)
Return
P1Select3:
Gui, Submit, NoHide
Player(hPic3, C3)
Return
P1Select4:
Gui, Submit, NoHide
Player(hPic4, C4)
Return
P1Select5:
Gui, Submit, NoHide
Player(hPic5, C5)
Return
P1Select6:
Gui, Submit, NoHide
Player(hPic6, C6)
Return
P1Select7:
Gui, Submit, NoHide
Player(hPic7, C7)
Return
P1Select8:
Gui, Submit, NoHide
Player(hPic8, C8)
Return
P1Select9:
Gui, Submit, NoHide
Player(hPic9, C9)
Return
P1Select10:
Gui, Submit, NoHide
Player(hPic10, C10)
Return
Player(ByRef id, ByRef sel)
{
if sel = Astra
Imagen("JPEG\AGENT_ASTRA.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Breach
Imagen("JPEG\AGENT_BREACH.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Brimstone
Imagen("JPEG\AGENT_BRIMSTONE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Cypher
Imagen("JPEG\AGENT_CYPHER.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Chamber
Imagen("JPEG\AGENT_CHAMBER.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Deadlock
Imagen("JPEG\AGENT_DEADLOCK.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Fade
Imagen("JPEG\AGENT_FADE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Gekko
Imagen("JPEG\AGENT_GEKKO.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Harbor
Imagen("JPEG\AGENT_HARBOR.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Jett
Imagen("JPEG\AGENT_JETT.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Kayo
Imagen("JPEG\AGENT_KAYO.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Killjoy
Imagen("JPEG\AGENT_KILLJOY.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Neon
Imagen("JPEG\AGENT_NEON.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Omen
Imagen("JPEG\AGENT_OMEN.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Phoenix
Imagen("JPEG\AGENT_PHOENIX.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Raze
Imagen("JPEG\AGENT_RAZE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Reyna
Imagen("JPEG\AGENT_REYNA.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Sage
Imagen("JPEG\AGENT_SAGE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Skye
Imagen("JPEG\AGENT_SKYE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Sova
Imagen("JPEG\AGENT_SOVA.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Viper
Imagen("JPEG\AGENT_VIPER.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Yoru
Imagen("JPEG\AGENT_YORU.png", "Background0000FF FadeIn300ms ahk_id" . id)
else
Imagen("JPEG\AGENT_BLANK.png", "Background0000FF FadeIn300ms ahk_id" . id)
}
Banned(ByRef id, ByRef sel)
{
if sel = Astra
Imagen("JPEG\BannedAgent\AGENT_ASTRA.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Breach
Imagen("JPEG\BannedAgent\AGENT_BREACH.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Brimstone
Imagen("JPEG\BannedAgent\AGENT_BRIMSTONE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Cypher
Imagen("JPEG\BannedAgent\AGENT_CYPHER.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Chamber
Imagen("JPEG\BannedAgent\AGENT_CHAMBER.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Fade
Imagen("JPEG\BannedAgent\AGENT_FADE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Harbor
Imagen("JPEG\BannedAgent\AGENT_HARBOR.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Jett
Imagen("JPEG\BannedAgent\AGENT_JETT.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Kayo
Imagen("JPEG\BannedAgent\AGENT_KAYO.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Killjoy
Imagen("JPEG\BannedAgent\AGENT_KILLJOY.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Neon
Imagen("JPEG\BannedAgent\AGENT_NEON.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Omen
Imagen("JPEG\BannedAgent\AGENT_OMEN.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Phoenix
Imagen("JPEG\BannedAgent\AGENT_PHOENIX.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Raze
Imagen("JPEG\BannedAgent\AGENT_RAZE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Reyna
Imagen("JPEG\BannedAgent\AGENT_REYNA.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Sage
Imagen("JPEG\BannedAgent\AGENT_SAGE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Skye
Imagen("JPEG\BannedAgent\AGENT_SKYE.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Sova
Imagen("JPEG\BannedAgent\AGENT_SOVA.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Viper
Imagen("JPEG\BannedAgent\AGENT_VIPER.png", "Background0000FF FadeIn300ms ahk_id" . id)
else if sel = Yoru
Imagen("JPEG\BannedAgent\AGENT_YORU.png", "Background0000FF FadeIn300ms ahk_id" . id)
else
Imagen("JPEG\BannedAgent\AGENT_BLANK.png", "Background0000FF FadeIn300ms ahk_id" . id)
}

ClearNames()
{
Gui, Submit, NoHide
GuiControl,, P1name,
GuiControl,, P2name,
GuiControl,, P3name,
GuiControl,, P4name,
GuiControl,, P5name,
GuiControl,, P6name,
GuiControl,, P7name,
GuiControl,, P8name,
GuiControl,, P9name,
GuiControl,, P10name,
GuiControl,, P1edit,
GuiControl,, P2edit,
GuiControl,, P3edit,
GuiControl,, P4edit,
GuiControl,, P5edit,
GuiControl,, P6edit,
GuiControl,, P7edit,
GuiControl,, P8edit,
GuiControl,, P9edit,
GuiControl,, P10edit,
}

ClearAgents:
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic1)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic2)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic3)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic4)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic5)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic6)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic7)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic8)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic9)
    Imagen("JPEG\AGENT_BLANK.png", "Background0000FF ahk_id" . hPic10)   
Return

GuiEscape:
GuiClose:
ExitApp


vuab_This_and_next_line_added_by_Ahk2Exe:
Exit
Imagen( Filename, Options:="", ByRef hBitmap:=0 ) {
Local
Static GdiplusStartupInput, RECT
If !VarSetCapacity(GdiplusStartupInput)
VarSetCapacity(GdiplusStartupInput, 24, 0),  NumPut(1, GdiplusStartupInput, "Int")
Options := (A_Space . Options . A_Space), Bpp := 0, sBM := 0, hCtrl := 0, hBitmap := 0
If ( f := InStr(Options, " ahk_id",, 0) )
If ( hCtrl := Format("0x{:x}", SubStr(Options, f+7)) )
{
WinGetClass, Class, ahk_id %hCtrl%
If ( Class!="Static" )
Return (ErrorLevel := 1)*0
WinSet, Style, +0x20E, ahk_id %hCtrl%
VarSetCapacity(RECT, 16)
DllCall("user32.dll\GetClientRect", "Ptr",hCtrl, "Ptr",&RECT)
W := NumGet(RECT, 8, "Int") - NumGet(RECT, 0, "Int")
H := NumGet(RECT,12, "Int") - NumGet(RECT, 4, "Int")
If ( W<1 || H<1 )
Return (ErrorLevel := 2)*0
Options .= "Scale "
}
If ( f := InStr(FileName, "HBITMAP:",, 0) )
{
DontDelete := ( SubStr(Filename, f+8, 1) = "*" )
sBM := Format("{1:d}", SubStr(FileName, f+8+DontDelete))
VarSetCapacity(BITMAP, 32, 0)
If ( !DllCall("gdi32.dll\GetObject", "Ptr",sBM, "Int",A_PtrSize=8? 32:24, "Ptr",&BITMAP) )
Return (ErrorLevel := 3)*0
Bpp := NumGet(BITMAP, 18, "Short")
}
If ( !sBM && !FileExist(FileName) && StrLen(FileName) )
Return (ErrorLevel := 4)*0
hMod := DllCall("kernel32.dll\LoadLibrary", "Str","GdiPlus.dll", "Ptr"),  pToken := 0
DllCall("gdiplus.dll\GdiplusStartup", "PtrP",pToken, "Ptr",&GdiplusStartupInput, "Int",0)
SX := 0, SY := 0, SW := 0, SH := 0, pBits := 0, pBitmap := 0, pGraphics := 0, pBMtemp := 0, pAttr := 0
PARGB := 925707, RGB := 139273
If ( StrLen(FileName)=0 )
DllCall("gdiplus.dll\GdipCreateBitmapFromScan0"
, "Int",SW:=2, "Int",SH:=2, "Int",0, "Int",PARGB, "Ptr",0, "PtrP",pBitmap)
Else If ( Bpp=0 )
DllCall("gdiplus.dll\GdipCreateBitmapFromFile", "WStr",Filename, "PtrP",pBitmap)
Else
Switch ( Bpp ) {
Default :
DllCall("gdiplus.dll\GdipCreateBitmapFromHBITMAP", "Ptr",sBM, "Ptr",0, "PtrP",pBitmap)
If ( DontDelete=False )
DllCall("gdi32.dll\DeleteObject", "Ptr",sBM)
Case 32 :
SW := NumGet(BITMAP, 04, "UInt"),   Stride := NumGet(BITMAP, 12, "UInt")
SH := NumGet(BITMAP, 08, "UInt"),   Bytes  := Stride * SH
VarSetCapacity(BITMAPINFO, 40, 0),  pBMI := &BITMAPINFO
NumPut(Bpp, NumPut(1,NumPut(0-SH,NumPut(SW,NumPut(40,pBMI+0,"Int"),"Int"),"Int"),"Short"),"Short")
tBM := DllCall("gdi32.dll\CreateDIBSection", "Ptr",0, "Ptr",pBMI, "Int",0, "PtrP",pBits, "Ptr",0, "Int", 0, "Ptr")
tDC := DllCall("gdi32.dll\CreateCompatibleDC", "Ptr",0, "Ptr")
DllCall("gdi32.dll\SaveDC", "Ptr",tDC)
sDC := DllCall("gdi32.dll\CreateCompatibleDC", "Ptr",0, "Ptr")
DllCall("gdi32.dll\SaveDC", "Ptr",sDC)
DllCall("gdi32.dll\SelectObject", "Ptr",tDC, "Ptr",tBM)
DllCall("gdi32.dll\SelectObject", "Ptr",sDC, "Ptr",sBM)
DllCall("gdi32.dll\GdiAlphaBlend"
, "Ptr",tDC, "Int",0, "Int",0, "Int",SW, "Int",SH
, "Ptr",sDC, "Int",0, "Int",0, "Int",SW, "Int",SH, "Int",AM := 0x01FF0000)
If ! ( Numget(pBits+0,"Int")
|| DllCall("ntdll.dll\RtlCompareMemory", "Ptr",pBits, "Ptr",pBits+1, "Ptr",Bytes-1)!=Bytes-1 )
DllCall("gdi32.dll\GdiAlphaBlend"
, "Ptr",tDC, "Int",0, "Int",0, "Int",SW, "Int",SH
, "Ptr",sDC, "Int",0, "Int",0, "Int",SW, "Int",SH, "Int",AM := 0x00FF0000)
DllCall("gdi32.dll\RestoreDC", "Ptr",sDC, "Int",-1)
DllCall("gdi32.dll\DeleteDC", "Ptr",sDC)
DllCall("gdi32.dll\RestoreDC", "Ptr",tDC, "Int",-1)
DllCall("gdi32.dll\DeleteDC", "Ptr",tDC)
VarSetCapacity(BITMAPDATA, 40, 0),  NumPut(Stride, BITMAPDATA, 8, "Int"),    PixFmt := (AM=0x01FF0000 ? PARGB : RGB)
DllCall("gdiplus.dll\GdipCreateBitmapFromScan0", "Int",SW, "Int",SH, "Int",0, "Int",PixFmt, "Ptr",0, "PtrP",pBitmap)
DllCall("gdiplus.dll\GdipBitmapLockBits", "Ptr",pBitmap, "Ptr",0, "Int",0x1, "Int",PixFmt, "Ptr",&BITMAPDATA)
DllCall("kernel32.dll\RtlMoveMemory","Ptr",NumGet(BITMAPDATA, 16, "Ptr"), "Ptr",pBits, "Ptr",Bytes)
DllCall("gdiplus.dll\GdipBitmapUnlockBits", "Ptr",pBitmap, "Ptr",&BITMAPDATA)
DllCall("gdi32.dll\DeleteObject", "Ptr",tBM),
If (DontDelete=False)
DllCall("gdi32.dll\DeleteObject", "Ptr",sBM)
}
If ( pBitmap && SW=0 && SH=0)
DllCall("gdiplus.dll\GdipGetImageWidth", "Ptr",pBitmap, "PtrP",SW)
, DllCall("gdiplus.dll\GdipGetImageHeight","Ptr",pBitmap, "PtrP",SH)
If ( pBitmap=0 || SW<1 || SH<1 )
{
DllCall("gdiplus.dll\GdiplusShutdown", "Ptr",pToken)
DllCall("kernel32.dll\FreeLibrary", "Ptr",hMod)
Return (ErrorLevel := 6)*0
}
If ( !hCtrl )
W := ( (f := InStr(Options, " W",, 0)) ? Format("{:d}", SubStr(Options, f+2)) : 0 )
, H := ( (f := InStr(Options, " H",, 0)) ? Format("{:d}", SubStr(Options, f+2)) : 0 )
SAF := Round(SW/SH, 8)
If ( W>0 )
TW := W,  TH := (H=0 ? (H:=SH) : H<0 ? (H:=Ceil(TW/SAF)) : H)
Else If ( H>0 )
TH := H,  TW := (W=0 ? (W:=SW) : W<0 ? (W:=Ceil(TH*SAF)) : W)
Else TW := (W := SW),  TH := (H := SH)
TAF := Round(TW/TH, 8)
Upscale := InStr(Options, " Upscale",, 0)
If ( InStr(Options, " Scale",, 0) || Upscale )
D :=  ( !Upscale && SW<=TW && SH<=TH ) ? { "W": SW, "H": SH }
:   ( SAF=1 && TAF>=1 ) ? { "W": TH, "H": TH }
:   ( SAF=1 && TAF< 1 ) ? { "W": TW, "H": TW }
:   ( SAF < TAF ) ? { "W": Ceil( (TW/TAF) * SAF ), "H": TH }
:   ( SAF > TAF ) ? { "H": Ceil( (TH/SAF) * TAF ), "W": TW }
:   { "W": TW, "H": TH }
, TW := D.W,  TH := D.H
Zoom := ( InStr(Options, " Zoom",, 0) )
Real := ( !hCtrl && !Zoom && InStr(Options, " Real",, 0) )
CW := ( Real ? TW : W ),   TX := ( (CW-TW)//2 )
CH := ( Real ? TH : H ),   TY := ( (CH-TH)//2 )
If ( Zoom && !(TW=W && TH=H) )
If ( TW!=CW && TH=CH )
TH := Round(TH*(CW/TW)), TW := CW, TX := 0, TY := (CH-TH)//2
Else
If ( TW=CW && TH!=CH )
TW := Round(TW*(CH/TH)), TH := CH, TY := 0, TX := (CW-TW)//2
BG := StrSplit(( (f := InStr(Options, " Background",,0)) ? SubStr(Options, f+11) : "" ), A_Space)[1]
BG := ( BG="Trans" ? "Trans" : BG=""
? Format("0x{2:02X}{3:02X}{4:02X}", n := DllCall("user32.dll\GetSysColor", "Int",15, "UInt")
,(n & 255), ((n>>8) & 255), ((n>>16) & 255))
:  DllCall("msvcrt.dll\_wcstoui64", "WStr",BG, "Int",0, "Int",16, "Int64") )
BG := Format("0x{1:08X}", (hCtrl || BG<0x001000000) ? BG|0xFF000000 : BG)
_X := StrSplit( (f := InStr(Options," ?",, 0)) ? SubStr(Options,f+2) : "", A_Space)[1]
_X := StrSplit(_X, ":")
X  := _X.1
If (StrLen(X)!=200 )
Switch ( X ) {
Default          : X := ""
Case "Normal"    : X := "0000803f00000000000000000000000000000000000000000000803f0000000000000000000000000000000000"
. "0000000000803f00000000000000000000000000000000000000000000803f00000000000000000000000000000000000000000000803f"
Case "Grayscale" : X := "8716993e8716993e8716993e0000000000000000a245163fa245163fa245163f0000000000000000d578e93dd5"
. "78e93dd578e93d00000000000000000000000000000000000000000000803f00000000000000000000000000000000000000000000803f"
Case "Invert"    : X := "000080bf0000000000000000000000000000000000000000000080bf0000000000000000000000000000000000"
. "000000000080bf00000000000000000000000000000000000000000000803f000000000000803f0000803f0000803f000000000000803f"
Case "Sepia"     : X := "4c37c93e21b0b23e96438b3e00000000000000002fdd443fb29d2f3f39b4083f00000000000000003789413e31"
. "082c3edd24063e00000000000000000000000000000000000000000000803f00000000000000000000000000000000000000000000803f"
}
If ( StrLen(X)=200 && VarSetCapacity(CM,100,0) )
{
X:=DllCall("Crypt32.dll\CryptStringToBinary", "Str",X, "Int",200, "Int",4, "Ptr",&CM, "IntP",100, "Int",0, "Int",0)
Z := Format("{:0.7f}", _X.2)
If ( Z>0 && Z<255 )
NumPut(Z/255, CM, 72, "Float")
}
DllCall("gdiplus.dll\GdipCreateBitmapFromScan0", "Int",CW, "Int",CH, "Int",0, "Int",PARGB, "Ptr",0, "PtrP",pBMtemp)
DllCall("gdiplus.dll\GdipGetImageGraphicsContext", "Ptr",pBMtemp, "PtrP",pGraphics)
DllCall("gdiplus.dll\GdipSetSmoothingMode", "Ptr",pGraphics, "Int",2)
DllCall("gdiplus.dll\GdipSetInterpolationMode", "Ptr",pGraphics, "Int",7)
DllCall("gdiplus.dll\GdipGraphicsClear", "Ptr",pGraphics, "Int",BG)
If ( X!=1 )
DllCall("gdiplus\GdipDrawImageRectRect", "Ptr",pGraphics, "Ptr",pBitmap
, "Float",TX, "Float",TY, "Float",TW, "Float",TH, "Float",SX, "Float",SY, "Float",SW, "Float",SH
, "Int",UnitPixel:=2, "Ptr",pAttr, "Ptr",0, "Ptr",0 )
Else
{
DllCall("gdiplus\GdipCreateImageAttributes", "PtrP",pAttr)
DllCall("gdiplus\GdipSetImageAttributesColorMatrix", "Ptr",pAttr, "Int",1, "Int",1, "Ptr",&CM, "Ptr",0, "Int",0)
DllCall("gdiplus\GdipDrawImageRectRect", "Ptr",pGraphics, "Ptr",pBitmap
, "Float",TX, "Float",TY, "Float",TW, "Float",TH, "Float",SX, "Float",SY, "Float",SW, "Float",SH
, "Int",UnitPixel:=2, "Ptr",pAttr, "Ptr",0, "Ptr",0 )
DllCall("gdiplus\GdipDisposeImageAttributes", "Ptr",pAttr)
}
DllCall("gdiplus.dll\GdipDisposeImage", "Ptr",pBitmap),   pBMtemp := (pBitmap := pBMtemp)*0
DllCall("gdiplus.dll\GdipDeleteGraphics", "Ptr",pGraphics)
VarSetCapacity(BITMAPINFO, 40, 0),  pBMI := &BITMAPINFO, Stride := CW*4, Bpp := 32
NumPut(Bpp, NumPut(1,NumPut(CH,NumPut(CW,NumPut(40,pBMI+0,"Int"),"Int"),"Int"),"Short"),"Short")
hBM := DllCall("gdi32.dll\CreateDIBSection", "Ptr",0, "Ptr",pBMI, "Int",0, "PtrP",pBits, "Ptr",0, "Int", 0, "Ptr")
VarSetCapacity( BitmapData, A_PtrSize = 8 ? 32 : 24, 0 )
NumPut( 0 - Stride, BitmapData, 8, "Int" )
NumPut( pBits + ( Stride * CH ) - Stride, BitmapData, 16, "Ptr" )
DllCall("gdiplus.dll\GdipBitmapLockBits", "Ptr",pBitmap, "Ptr",0, "Int",0x5, "Int",PARGB, "Ptr",&BitmapData)
DllCall("gdiplus.dll\GdipBitmapUnlockBits", "Ptr",pBitmap, "Ptr",&BitmapData)
DllCall("gdiplus.dll\GdipDisposeImage","Ptr",pBitmap)
DllCall("gdiplus.dll\GdiplusShutdown", "Ptr",pToken)
DllCall("kernel32.dll\FreeLibrary", "Ptr",hMod)
If ( !hCtrl )
Return ((hBitmap:=hBM)*0)+1
Avals := 255, Delay := 0, Chk := 0, Cur := 0
If ( AnimN := ( f := InStr(Options, " FadeIn",, 0) ) ? Format("{1:d}", SubStr(Options, f+7)) : 0 )
{
Avals := ( (Avals := StrSplit( (f := InStr(Options,"ms<",, 0)) ? SubStr(Options,f+3) : "", ">")[1])
?    Avals : "5,6,7,8,9,10,11,12,13,14,15,16,18,19,20,21,22,24,27,31,36,42,49,57,65,90,124,165,204,255" )
StrReplace(AVals, ",", ",", Frames), Frames += 1
Delay := Round( (AnimN/Frames)*10000 )
}
mDC := DllCall("gdi32.dll\CreateCompatibleDC", "Ptr",0, "Ptr")
DllCall("gdi32.dll\SaveDC", "Ptr",mDC)
DllCall("gdi32.dll\SelectObject", "Ptr",mDC, "Ptr",hBM)
sDC := DllCall("user32.dll\GetDC", "Ptr",hCtrl, "Ptr")
SetBatchLines, % (-1, SBL := A_BatchLines)
Loop, Parse, Avals, CSV
{
DllCall("gdi32.dll\GdiAlphaBlend"
, "Ptr",sDC, "Int",0, "Int",0, "Int",W, "Int",H
, "Ptr",mDC, "Int",0, "Int",0, "Int",W, "Int",H, "Int", Format("0x01{:02x}0000", A_LoopField))
If ( Delay )
{
DllCall("kernel32.dll\GetSystemTimeAsFileTime", "Int64P",Cur),    Chk := Cur+Delay
While ( Cur<Chk )
{
DllCall("kernel32.dll\GetSystemTimeAsFileTime", "Int64P",Cur)
Sleep 0
}
}
}
SetBatchLines, %SBL%
DllCall("user32.dll\ReleaseDC", "Ptr",hCtrl, "Ptr",sDC)
DllCall("gdi32.dll\RestoreDC", "Ptr",mDC, "Int",-1)
DllCall("gdi32.dll\DeleteDC", "Ptr",mDC)
DllCall("user32.dll\SendMessage", "Ptr",hCtrl, "Int",0x00B, "Ptr",0, "Ptr",0, "Ptr")
oBM := DllCall("user32.dll\SendMessage", "Ptr",hCtrl, "Int",0x172, "Ptr",0, "Ptr",hBM, "Ptr")
DllCall("user32.dll\SendMessage", "Ptr",hCtrl, "Int",0x00B, "Ptr",1, "Ptr",0, "Ptr")
DllCall("gdi32.dll\DeleteObject", "Ptr",oBM)
DllCall("gdi32.dll\DeleteObject", "Ptr",hBM)
Return 1
}
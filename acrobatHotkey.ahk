;--- 热键定义：# win , ! Alt , ^ Ctrl  , + shift ---

;---提升性能相关的配置---
KeyHistory 0				;不记录击键log
ListLines false				;不记录击键log
SetKeyDelay  -1, -1			
SetMouseDelay  -1			
SetDefaultMouseSpeed  0	
SetWinDelay  0
SetControlDelay  0
;SendMode Input	


;---指定特定界面的热键---
#HotIf WinActive("ahk_exe Acrobat.exe") 

;**高亮**
!1::setTool(787, 78)
;**文本**
!2::setTool(898, 78)
;**箭头**
!3::setTool(1122, 78)
;**矩形**
!4::setTool(1394, 78)
;**注释**
!5::setTool(1448, 78)
;**橡皮擦**
!6::setTool(1166, 78)

;**黄色**
^1::setHighlight(141,100)
;**粉色**
^2::setHighlight(206,147)
;**蓝色**
^3::setText(119,48)
;**绿色**
^4::setText(80,36)

;---结束特定界面的热键定义---
;#HotIf

;---选择工具栏---
setTool(x,y)
{
	MouseGetPos &oldX, &oldY
	Click x,y
	MouseMove oldX, oldY
}
;---设置高亮颜色---
setHighlight(x,y)
{
	WinActivate("ahk_class AcrobatSDIWindow")
	MouseGetPos &oldX, &oldY
	Click 1224, 79
	WinWait("ahk_class AVL_AVPopup")
	WinActivate
	;WinActivate("ahk_class AVL_AVPopup")
	Click x,y
	WinActivate("ahk_class AcrobatSDIWindow")
	MouseMove oldX, oldY
}
;---设置文本颜色---
setText(x,y)
{
	WinActivate("ahk_class AcrobatSDIWindow")
	MouseGetPos &oldX, &oldY
	;WinActivate("ahk_class AVL_AVFloating")
	Click 600, 210
	WinWait("ahk_class AVL_AVWindow")
	WinActivate
	;WinActivate("ahk_class AVL_AVWindow")
	Click x,y
	WinActivate("ahk_class AcrobatSDIWindow")
	MouseMove oldX, oldY
}

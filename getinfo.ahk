SetTimer WatchCursor, 1000

WatchCursor()
{
    MouseGetPos &xpos, &ypos, &id, &control
    ToolTip
    (
        "ahk_id: " id 
        "`nahk_class: " WinGetClass(id) 
        "`nahk_title: " WinGetTitle(id) 
        "`nControl: " control
        "`nx: " xpos
        "`ny: " ypos
    )
}
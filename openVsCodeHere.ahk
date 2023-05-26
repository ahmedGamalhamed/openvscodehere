#Requires AutoHotkey v2.0

; This is the key combo.
#c::
{
    ; Is the current window an Explorer window?
    if (WinGetClass("A") == "CabinetWClass") {

        ; If no files are selected...
            ; Get the current window's ID.
            hwnd := WinGetID("A")

            ; Find the current window's COM object.
            for window in ComObject("Shell.Application").Windows{
                if (window && window.hwnd && window.hwnd == hwnd)
                    ; Get the current folder's path.
                    path := window.Document.Folder.Self.Path
            }
        
        
        ; Run code.
        exe := '"' . StrReplace(A_AppData, "Roaming", "Local\Programs\Microsoft VS Code\code") . '"'
        Run(exe . " " . path)
    }
}

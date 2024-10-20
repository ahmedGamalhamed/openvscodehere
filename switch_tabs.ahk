#Requires AutoHotkey v2.0

; Switch to the next tab with Ctrl + Arrow Down
^Down::
{

	    Send("^{PgUp}")

}

; Switch to the previous tab with Ctrl + Arrow Up
^Up::
{
        Send("^{PgDn}")  ; Switch to the left tab
}

; Settings / Vars

whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/RubenHetKonijn/rksoftware/master/index.txt", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse()
indexFile := whr.ResponseText
MsgBox % indexFile





; Index Splitter
; 0 = link
; 1 = name
; 2 = description

; Split on new line
indexArray := StrSplit(indexFile, "`n")
Loop, % oText.MaxIndex()
    MsgBox, % oText[A_Index]
    
for i, 

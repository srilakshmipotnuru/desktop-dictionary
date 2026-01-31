!+d:: ; ALT + SHIFT + D

	Clipboard :=
	Send, ^c
	ClipWait, 0.5
	
	word := Trim(Clipboard)
	if (word = "")
		return
	; to take only first word
	word := RegExReplace(word, "\s+.*$", "")

	RunWait, powershell.exe -ExecutionPolicy Bypass -NoProfile `
		 -File D:\Downloads\study\shell\defineWord.ps1 `
		 -Word "%word%", , Hide

return
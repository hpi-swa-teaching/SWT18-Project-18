as yet unclassified
addColLabel: aCol
	| label char text amount |
	
	label := SpreadsheetLabel col: aCol on: self.
	char := ((aCol index + 1) asString asCharacter asciiValue + 16) asCharacter.
	amount := (aCol index / 26) asInteger + 1 .
	text := ''.
	1 to: amount do: [:d | text := text, char.].
	label contents: text.
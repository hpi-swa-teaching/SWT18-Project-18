layout
addColLabel: aCol
	| char text amount |
	
	char := (aCol index asString asCharacter asciiValue + 16) asCharacter.
	amount := (aCol index / 26) asInteger + 1 .
	text := ''.
	1 to: amount do: [:d | text := text, char.].
	aCol contents: text.
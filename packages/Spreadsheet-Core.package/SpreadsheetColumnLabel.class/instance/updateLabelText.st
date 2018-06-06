as yet unclassified
updateLabelText

	| char aText amount |
	
	char := (self index asString asCharacter asciiValue + 16) asCharacter.
	amount := (self index / 26) asInteger + 1.
	aText := ''.
	1 to: amount do: [:d | aText := aText, char].
	self text: aText
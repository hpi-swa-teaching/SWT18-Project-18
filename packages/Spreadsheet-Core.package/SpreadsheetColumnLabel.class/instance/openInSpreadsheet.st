as yet unclassified
openInSpreadsheet 
	| char text amount |
	
	char := (self index asString asCharacter asciiValue + 16) asCharacter.
	amount := (self index / 26) asInteger + 1.
	text := ''.
	1 to: amount do: [:d | text := text, char.].
	self text: text.	
	"self position: ((self index) * self width + self grid position x + self rowOffset)@(self grid position y + self colOffset)."
	self position: (self grid right) @ (self grid markAllLabel position y).
	self grid addMorph: self.
	
	self edgeGrip: (SpreadsheetColumnGrip newFor: self on: self grid).
	self edgeGrip
		height: self height;
		position: (self right - (edgeGrip width)) @ self position y.
	self grid addMorphFront: edgeGrip.
accessing
openColLabelInSpreadsheet 
	| char text amount edgeGrip |
	
	char := ((self index + 1) asString asCharacter asciiValue + 16) asCharacter.
	amount := (self index / 26) asInteger + 1 .
	text := ''.
	1 to: amount do: [:d | text := text, char.].
	self contents: text.	
	self position: (self index * self width + self grid position x + self rowOffset)@(self grid position y + self colOffset).
	self grid addMorph: self.
	
	edgeGrip := SpreadsheetColumnGrip newOn: self.
	edgeGrip
		height: self height;
		position: (self position x + self width - (edgeGrip width / 2)) @ self position y.
	self addMorphFront: edgeGrip.
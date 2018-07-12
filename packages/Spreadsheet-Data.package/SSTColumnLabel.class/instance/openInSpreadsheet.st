as yet unclassified
openInSpreadsheet 
	
	self updateLabelText.
	"self position: ((self index) * self width + self data grid position x + self rowOffset)@(self grid position y + self colOffset)."
	self index > 1
		ifFalse: [self position: self data grid right @ self data grid position y]
		ifTrue: [self position: self leftLabel right @ self data grid position y].
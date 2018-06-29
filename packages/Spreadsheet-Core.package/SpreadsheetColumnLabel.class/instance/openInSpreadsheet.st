as yet unclassified
openInSpreadsheet 
	
	self updateLabelText.
	"self position: ((self index) * self width + self data grid position x + self rowOffset)@(self grid position y + self colOffset)."
	self position: (self data grid right) @ (self data grid position y).
as yet unclassified
openInSpreadsheet 

	self 
		width: self standardWidth;
		updateLabelText.
	self index > 1
		ifFalse: [self position: self data grid position x @ self data grid bottom]
		ifTrue: [self data grid position x @ self topLabel bottom].
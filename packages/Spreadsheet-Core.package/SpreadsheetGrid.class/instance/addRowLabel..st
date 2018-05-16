as yet unclassified
addRowLabel: aRow
	| label |
	
	label := SpreadsheetLabel row: aRow on: self.
	label 
		width: 30;
		contents: (aRow index + 1) asString.
		
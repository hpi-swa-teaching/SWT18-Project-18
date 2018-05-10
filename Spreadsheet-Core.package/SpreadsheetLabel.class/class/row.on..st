as yet unclassified
row: aRow on: aGrid

	^(self new)
		row: aRow;
		grid: aGrid;
		type: #rowLabel;
		openRowLabelInSpreadsheet
as yet unclassified
col: aCol on: aGrid

	^(self new)
		column: aCol;
		grid: aGrid;
		type: #columnLabel;
		openColLabelInSpreadsheet 
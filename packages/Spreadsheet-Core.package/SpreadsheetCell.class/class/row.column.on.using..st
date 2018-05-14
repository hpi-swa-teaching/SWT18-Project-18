as yet unclassified
row: aRow column: aCol on: aGrid using: aFunctionWindow

	^(self new)
		row: aRow;
		column: aCol;
		grid: aGrid;
		functionWindow: aFunctionWindow;
		openInSpreadsheet
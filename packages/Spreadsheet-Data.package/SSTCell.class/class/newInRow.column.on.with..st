as yet unclassified
newInRow: aRow column: aColumn on: aDataSet with: aCellType

	^self new
		row: aRow;
		column: aColumn;
		data: aDataSet;
		cellType: aCellType;
		openInSpreadsheet
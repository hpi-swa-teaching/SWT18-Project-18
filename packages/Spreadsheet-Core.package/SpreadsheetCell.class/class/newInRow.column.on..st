as yet unclassified
newInRow: aRow column: aColumn on: aDataSet

	^self new
		row: aRow;
		column: aColumn;
		data: aDataSet;
		openInSpreadsheet
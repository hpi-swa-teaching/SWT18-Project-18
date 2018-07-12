as yet unclassified
newInRow: aRow column: aColumn on: aDataSet with: aCellType

	^self new
		data: aDataSet;
		cellType: aCellType;
		addTo: aColumn and: aRow
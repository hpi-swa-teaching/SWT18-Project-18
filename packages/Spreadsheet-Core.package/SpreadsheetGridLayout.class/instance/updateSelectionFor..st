as yet unclassified
updateSelectionFor: aMorph

	aMorph selection startCell: (aMorph data 
		cellAtRowIndex: aMorph selection startCell row index 
		colIndex:  aMorph selection startCell column index).
	aMorph selection startCell ifNil: [aMorph startCell: (aMorph data cellAtIndex: 1@1)].
	aMorph selection adjustSize.
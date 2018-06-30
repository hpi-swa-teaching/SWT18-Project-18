accessing
replaceSingleCells: aString

	| newString |
	newString := self replaceSingleCellsAccessor: aString.
	newString := self replaceSingleCellsContent: newString.
	^ newString
binding
bindSingleCells: aString

	| newString |
	newString := self bindSingleCellsAccessor: aString.
	newString := self bindSingleCellsContent: newString.
	^ newString
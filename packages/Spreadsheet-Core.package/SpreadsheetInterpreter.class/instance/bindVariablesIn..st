binding
bindVariablesIn: aString

	| newString |
	
	self bindGridAccessor: aString.
	self bindCellAccessor: aString.
	newString := self bindCellCollections: aString.
	newString := self bindSingleCells: newString.
	^ newString
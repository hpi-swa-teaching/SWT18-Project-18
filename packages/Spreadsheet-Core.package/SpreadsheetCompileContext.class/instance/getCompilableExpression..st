accessing
getCompilableExpression: aString

	| newString |
	
	newString := self replaceSelfAccessor: aString.
	newString := self replaceCellCollections: newString.
	newString := self replaceSingleCells: newString.
	
	^ newString.
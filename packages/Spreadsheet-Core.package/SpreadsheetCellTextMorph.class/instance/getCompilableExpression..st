calculateResult
getCompilableExpression: aString

	| newString |
	newString := self replaceCellCollections: aString.
	newString := self replaceSingleCells: newString.
	^ newString.
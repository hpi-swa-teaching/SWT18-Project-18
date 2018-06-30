replace string
getCompilableExpression: aString

	| newString |
	
	newString := self replaceAccessors: aString.
	newString := self replaceCellCollections: newString.
	newString := self replaceSingleCells: newString.
	^ newString.
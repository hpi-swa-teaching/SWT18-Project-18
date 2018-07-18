as yet unclassified
calculateResult: aString for: cell

	| expression |
	
	(self isExpression: aString)  
		ifFalse: [ 
			| formatedString |
			formatedString := self formatedString: aString for: cell.
			cell content: (cell cellType typeRepresentation: aString).
			^ formatedString ]
		ifTrue: [
			expression := aString allButFirst.
			cell content: (self compiledResultFrom: expression for: cell).
			^ cell content asString]
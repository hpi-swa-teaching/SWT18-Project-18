as yet unclassified
calculateResult: aString for: cell

	| expression |
	
	(self isExpression: aString)  
		ifFalse: [ 
			cell content: (cell cellType typeRepresentation: aString).
			^ aString ]
		ifTrue: [
			expression := aString allButFirst.
			cell content: (self compiledResultFrom: expression for: cell).
			^ cell content asString]
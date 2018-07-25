as yet unclassified
calculateResult: aString for: aCell

	| expression |
	
	(self isExpression: aString)  
		ifFalse: [ 
			| formatedString |
			formatedString := self formatedString: aString for: aCell.
			aCell content: (aCell cellType typeRepresentation: aString).
			^ formatedString ]
		ifTrue: [
			expression := aString allButFirst.
			aCell content: (self compiledResultFrom: expression for: aCell).
			^ aCell content asString]
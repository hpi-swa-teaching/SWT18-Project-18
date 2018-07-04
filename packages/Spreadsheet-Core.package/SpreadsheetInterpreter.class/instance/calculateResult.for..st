as yet unclassified
calculateResult: aString for: cell

	| expression function |
	
	(self isExpression: aString)  
		ifFalse: [ ^ aString]
		ifTrue: [
			expression := aString allButFirst.
			function := SpreadsheetRegexMatcher getFunctionFromString: expression.
			function
				ifNil: [
					^ (self compiledResultFrom: expression for: cell).]
				ifNotNil: [^ (SpreadsheetMath perform: function on: (self cellContentsFrom: expression)) reduce asString]]
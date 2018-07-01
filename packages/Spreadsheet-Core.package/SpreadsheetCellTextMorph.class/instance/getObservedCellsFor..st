calculateResult
getObservedCellsFor: aString

	| expression function |
	
	(self isExpression: aString)  
		ifFalse: [ ^ OrderedCollection new]
		ifTrue: [
			expression := aString allButFirst.
			function := SpreadsheetRegexMatcher getFunctionFromString: expression.
			function
				ifNil: [ ^ OrderedCollection new]
				ifNotNil: [^ self cellsFrom: expression]]
				
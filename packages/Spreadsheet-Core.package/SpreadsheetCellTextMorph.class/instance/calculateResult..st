calculateResult
calculateResult: aString

	| expression function |
	
	(self isExpression: aString)  
		ifFalse: [ ^ aString]
		ifTrue: [
			expression := aString allButFirst.
			function := SpreadsheetRegexMatcher getFunctionFromString: expression.
			function
				ifNil: [^ Compiler evaluate: expression]
				ifNotNil: [^ SpreadsheetMath perform: function on: ((self cellsFrom: expression) replace: [ :cell | cell text asNumber])]]
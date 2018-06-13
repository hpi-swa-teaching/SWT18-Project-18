Expression Evaluation
calculateResult

	| expression function |
	
	self calcRepresentation: self text.
	(self isExpression: self text)  
		ifFalse: [ ^ self text]
		ifTrue: [
			expression := (self text) allButFirst.
			function := SpreadsheetRegexMatcher getFunctionFromString: expression.
			function
				ifNil: [^ Compiler evaluate: expression]
				ifNotNil: [^ SpreadsheetMath perform: function on: (self parameterValuesFrom: expression)] ]
		
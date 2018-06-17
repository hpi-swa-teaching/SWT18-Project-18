calculateResult
calculateResult: aString

	| expression function |
	
	(self isExpression: aString)  
		ifFalse: [ ^ aString]
		ifTrue: [
			expression := aString allButFirst.
			function := SpreadsheetRegexMatcher getFunctionFromString: expression.
			function
				ifNil: [
					expression := self getCompilableExpression: expression.
					^ [(Compiler evaluate: expression) reduce] on: Error do: [ :exception | Transcript show: exception class name; show: ': '  ; show: exception messageText; cr. ^ aString]]
				ifNotNil: [^ (SpreadsheetMath perform: function on: (self cellContentsFrom: expression)) reduce]]
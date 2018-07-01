calculateResult
isExpression: aString
	^aString notEmpty and: [((aString first) = $=)]
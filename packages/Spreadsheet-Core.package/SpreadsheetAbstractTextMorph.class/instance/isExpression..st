Expression Evaluation
isExpression: aString
	^aString notEmpty and: [((aString first) = $=)]
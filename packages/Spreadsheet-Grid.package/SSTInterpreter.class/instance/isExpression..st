regex
isExpression: aString
	^aString notEmpty and: [((aString first) = $=)]
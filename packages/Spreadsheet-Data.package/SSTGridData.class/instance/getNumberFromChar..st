accessing cells
getNumberFromChar: aChar
	"convert a char to an integer value via the asciiValue"
	| asciiVal |
	asciiVal := aChar asCharacter asciiValue.
	(asciiVal > 64 and: [asciiVal < 91]) 
		ifTrue: [^asciiVal - 64]
		ifFalse: [^asciiVal - 96]
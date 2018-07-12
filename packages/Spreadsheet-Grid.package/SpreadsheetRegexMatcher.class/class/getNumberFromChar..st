as yet unclassified
getNumberFromChar: aChar
	"convert a char to an integer value via the asciiValue"

	| asciiVal |
	asciiVal := aChar asCharacter asciiValue.
	(asciiVal > 64 and: asciiVal < 91) ifTrue: [
			^asciiVal - 64
		].
	(asciiVal > 96 and: asciiVal < 123) ifTrue: [
			^asciiVal - 96
		].
	^false
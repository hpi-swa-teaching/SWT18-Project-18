as yet unclassified
getCellstringFromString: aString
	"get the substring describing the cells 'a7:b8' from the string"

	| cellsRegex |
	cellsRegex :=  '[a-zA-Z]+[0-9]+\:[a-zA-Z]+[0-9]+' asRegex.
	^(cellsRegex matchesIn: aString) first
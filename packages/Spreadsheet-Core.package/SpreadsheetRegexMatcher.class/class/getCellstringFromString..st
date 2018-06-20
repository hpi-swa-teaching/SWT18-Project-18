as yet unclassified
getCellstringFromString: aString
	"get the substring describing the cells 'a7:b8' from the string"

	^(self cellCollectionRegex matchesIn: aString) first
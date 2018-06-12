as yet unclassified
testGetNumber
	| testInput |

	testInput := 'B'.
	self assert: [ ( SpreadsheetRegexMatcher getNumberFromChar: testInput) = 2].
as yet unclassified
testGetCellstring
	| testInput |

	testInput := 'dawdawdad(A5:B6)wdawdawd'.
	self assert: [ ( SpreadsheetRegexMatcher getCellstringFromString: testInput) sameAs: 'A5:B6'].
as yet unclassified
testGetFunction
	| testInput |

	testInput := 'sum(A5:B6)'.
	self assert: [ ( SpreadsheetRegexMatcher getFunctionFromString:  testInput) = #sum].
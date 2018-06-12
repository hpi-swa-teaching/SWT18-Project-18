as yet unclassified
testGetColumnAndRow
	| testInput |

	testInput := 'A4'.
	self assert: [  (SpreadsheetRegexMatcher getColumnAndRowFromCellLabel:  testInput) = (1@4)].
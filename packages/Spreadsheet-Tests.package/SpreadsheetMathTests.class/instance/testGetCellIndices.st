as yet unclassified
testGetCellIndices
	| testInput result |

	testInput := 'A5:B6'.
	result := OrderedCollection new.
	result 	add: 1@5;
			add: 2@6.	
	self assert: [ ( SpreadsheetRegexMatcher getCellIndicesForString:  testInput) = result].
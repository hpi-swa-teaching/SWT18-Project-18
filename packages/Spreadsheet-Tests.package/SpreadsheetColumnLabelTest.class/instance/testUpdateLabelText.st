as yet unclassified
testUpdateLabelText

	| aColumn testValues |
	
	aColumn := SpreadsheetColumnLabel new.
	testValues := Set with: #(5 'E') with: #(27 'AA') with: #(78 'ZZZ') with: #(69 'QQQ').
	
	testValues do: [:aValuePair |
		aColumn index: aValuePair first.
		aColumn updateLabelText.
		self assert: [aColumn text sameAs: aValuePair last]].
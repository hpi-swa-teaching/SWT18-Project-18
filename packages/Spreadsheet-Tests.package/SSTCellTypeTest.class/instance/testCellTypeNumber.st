as yet unclassified
testCellTypeNumber
	
	| numberCell valuesToTest targets result  |
	numberCell := SpreadsheetCellTypeNumber new.
	valuesToTest := #('1000' '1000.00' '1000000').
	targets := #('1,000' '1,000.00' '1,000,000').
	
	valuesToTest doWithIndex: [:val :i | 
		result := ''.
		(numberCell correspondingRegex matches: val) ifTrue: [
			result := numberCell formatCellContent: val].
		self assert: (result = (targets at: i))]
	
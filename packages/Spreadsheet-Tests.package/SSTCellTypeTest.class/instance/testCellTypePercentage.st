as yet unclassified
testCellTypePercentage
	
	| percentageCell valuesToTest targets result  |
	percentageCell := SpreadsheetCellTypePercentage new.
	valuesToTest := #('0.5' '0.51' '0.6' '1').
	targets := #('50.00%' '51.00%' '60.00%' '100.00%').
	
	valuesToTest doWithIndex: [:val :i | 
		result := ''.
		(percentageCell correspondingRegex matches: val) ifTrue: [
			result := percentageCell formatCellContent: val].
		self assert: (result = (targets at: i))]
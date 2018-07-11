as yet unclassified
testCellTypeDate
	
	| dateCell valuesToTest targets result  |
	dateCell := SpreadsheetCellTypeDate new.
	valuesToTest := #('24/12.18' '4.apr.18' '2018-01-03').
	targets := #('24-December-2018' '4-April-2018' '3-January-2018').
	
	valuesToTest doWithIndex: [:val :i | 
		result := ''.
		(dateCell correspondingRegex matches: val) ifTrue: [
			result := dateCell formatCellContent: val].
		self assert: (result = (targets at: i))]
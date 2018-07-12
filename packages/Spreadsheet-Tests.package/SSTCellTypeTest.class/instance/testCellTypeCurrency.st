as yet unclassified
testCellTypeCurrency
	
	| currencyCell valuesToTest targets result  |
	currencyCell := SSTCellTypeCurrency new.
	valuesToTest := #('1000' '1000.00' '10001').
	targets := #('1000.00 $' '1000.00 $' '10001.00 $').
	
	valuesToTest doWithIndex: [:val :i | 
		result := ''.
		(currencyCell correspondingRegex matches: val) ifTrue: [
			result := currencyCell formatCellContent: val].
		self assert: (result = (targets at: i))]
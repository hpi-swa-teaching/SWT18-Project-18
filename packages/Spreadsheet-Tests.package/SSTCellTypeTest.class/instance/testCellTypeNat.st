as yet unclassified
testCellTypeNat
	
	| natCell valuesToTest targets result  |
	natCell := SSTCellTypeNat new.
	valuesToTest := #('Peter' 'steven91' 'gollum' 'jackson').
	targets := #('Peter' 'steven91' 'gollum' 'jackson').
	
	valuesToTest doWithIndex: [:val :i | 
		result := ''.
		(natCell correspondingRegex matches: val) ifTrue: [
			result := natCell formatCellContent: val].
		self assert: (result = (targets at: i))]
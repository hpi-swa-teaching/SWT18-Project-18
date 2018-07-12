as yet unclassified
testCellTypeText
	
	| textCell valuesToTest targets result  |
	textCell := SSTCellTypeText new.
	valuesToTest := #('Peter' 'steven91' 'gollum' 'jackson').
	targets := #('Peter' 'steven91' 'gollum' 'jackson').
	
	valuesToTest doWithIndex: [:val :i | 
		result := ''.
		(textCell correspondingRegex matches: val) ifTrue: [
			result := textCell formatCellContent: val].
		self assert: (result = (targets at: i))]
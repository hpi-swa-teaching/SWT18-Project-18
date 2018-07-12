as yet unclassified
testCellTypeTime
	
	| timeCell valuesToTest targets result  |
	timeCell := SSTCellTypeTime new.
	valuesToTest := #('11am' '11pm' '11:59:59 pm' '23:59:59').
	targets := #('11:00:00' '23:00:00' '23:59:59' '23:59:59').
	
	valuesToTest doWithIndex: [:val :i | 
		result := ''.
		(timeCell correspondingRegex matches: val) ifTrue: [
			result := timeCell formatCellContent: val].
		self assert: (result = (targets at: i))]
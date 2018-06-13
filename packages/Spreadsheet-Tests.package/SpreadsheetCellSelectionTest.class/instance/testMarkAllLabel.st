as yet unclassified
testMarkAllLabel
	| allCells |
	self click: grid markAllLabel.
	allCells := OrderedCollection new.
	grid rows do: [ :row | 
		row cells do: [ :cell |
			allCells add: cell]].
	self assert: (selection cells includesAllOf: allCells).
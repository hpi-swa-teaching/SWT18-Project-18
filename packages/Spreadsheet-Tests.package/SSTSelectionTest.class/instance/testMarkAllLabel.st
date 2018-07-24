as yet unclassified
testMarkAllLabel
	| allCells |
	self simulateMouseEvent: #mouseDown at: grid position + (10@10) buttons: #(left) start: 0@0  morph: grid.
	allCells := OrderedCollection new.
	grid data rows do: [ :row | 
		row cells do: [ :cell |
			allCells add: cell]].
	self assert: (selection cells includesAllOf: allCells).
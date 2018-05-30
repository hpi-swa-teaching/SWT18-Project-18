event handling
selectAll
	| allCells |
	
	allCells := OrderedCollection new.
	self rows do: [ :row | 
		row cells do: [ :cell |
			allCells add: cell]].
	self selection fromCollection: allCells
event handling
selectAll
	| allCells |
	
	Transcript show: 'Called select all';cr.
	allCells := OrderedCollection new.
	self rows do: [ :row | 
		row cells do: [ :cell |
			allCells add: cell]].
	Transcript show: allCells;cr.
	self selection 
		fromCollection: allCells;
		startCell: allCells first;
		currentCell: allCells last;
		startLabel: nil;
		currentLabel: nil;
		startSelection.
	self selection adjustSize 
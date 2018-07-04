compiling
checkObservedCellsOf: aCell
	
	(aCell = cell) ifTrue: [ ^ true ].
	aCell observedCells do: [ :cell |
		(self checkObservedCellsOf: cell) ifTrue: [^ true ]].
	^ false.
		
compiling
hasCircularDependencies

	self observedCells do: [ :aCell |
		(self checkObservedCellsOf: aCell) ifTrue: [ ^ true ]].
	^ false.
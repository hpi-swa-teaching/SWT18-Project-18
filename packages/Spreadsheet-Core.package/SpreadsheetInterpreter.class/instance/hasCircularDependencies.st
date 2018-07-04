compiling
hasCircularDependencies

	cell observedCells do: [ :aCell |
		(self checkObservedCellsOf: aCell) ifTrue: [ ^ true ]].
	^ false.
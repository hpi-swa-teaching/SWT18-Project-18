compiling
resolveCircularDependency

	cell observedCells do: [ :aCell |
		aCell dependentCells remove: cell ].
	cell observedCells: nil.
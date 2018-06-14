calculateResult
processCells: cells

	self cell observedCells: cells.
	cells do: [ :cell | cell dependentCells add: self cell ].
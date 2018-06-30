as yet unclassified
processCells: cells for: aCell

	aCell observedCells: cells.
	cells do: [ :cell | cell dependentCells add: aCell ].
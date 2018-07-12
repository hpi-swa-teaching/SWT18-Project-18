as yet unclassified
unobserveAll: aCell

	aCell observedCells copy do: [ :cell | 
		cell dependentCells remove: aCell.
		aCell observedCells remove: cell.]
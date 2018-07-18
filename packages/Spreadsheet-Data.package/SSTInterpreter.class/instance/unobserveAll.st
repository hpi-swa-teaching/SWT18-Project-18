as yet unclassified
unobserveAll

	cell observedCells copy do: [ :aCell | 
		aCell dependentCells remove: cell.
		cell observedCells remove: aCell.]
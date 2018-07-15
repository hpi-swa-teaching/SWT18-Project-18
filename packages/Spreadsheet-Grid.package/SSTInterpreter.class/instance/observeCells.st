binding
observeCells

	self observedCells do: [ :aCell |
		cell observedCells add: aCell.
		aCell dependentCells add: cell.]
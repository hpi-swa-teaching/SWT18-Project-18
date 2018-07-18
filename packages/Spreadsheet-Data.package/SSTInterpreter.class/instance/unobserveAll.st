as yet unclassified
unobserveAll

	self cell observedCells copy do: [ :aCell | 
		aCell observingCells remove: self cell.
		self cell observedCells remove: aCell.]
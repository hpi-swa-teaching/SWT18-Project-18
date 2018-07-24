as yet unclassified
unobserveAll

	self observedCells copy do: [ :aCell | 
		aCell removeObserver: self.
		self observedCells remove: aCell.]
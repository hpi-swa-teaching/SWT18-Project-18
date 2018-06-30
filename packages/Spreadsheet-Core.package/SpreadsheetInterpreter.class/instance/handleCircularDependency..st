as yet unclassified
handleCircularDependency: aCell

	aCell observedCells do: [ :cell | cell dependentCells remove: aCell ].
	aCell observedCells: OrderedCollection new.
	aCell text: #CIRC.
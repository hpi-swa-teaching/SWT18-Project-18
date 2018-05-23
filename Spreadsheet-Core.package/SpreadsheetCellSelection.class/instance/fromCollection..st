as yet unclassified
fromCollection: aCollection

	self removeAllCells.
	aCollection do: [:cell | self addCell: cell]
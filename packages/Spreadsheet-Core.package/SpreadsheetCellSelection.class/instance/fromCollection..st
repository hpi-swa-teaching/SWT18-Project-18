cell
fromCollection: aCollection

	self removeAllCells.
	aCollection do: [:cell | self addCell: cell]
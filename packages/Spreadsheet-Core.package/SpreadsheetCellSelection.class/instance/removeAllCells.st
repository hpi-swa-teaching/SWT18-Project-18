cell
removeAllCells

	self cells copy do: [ :cell | self removeCell: cell]
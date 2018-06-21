helper
removeCollection:  aCollection

	aCollection do: [ :cell | self removeCell: cell ] 
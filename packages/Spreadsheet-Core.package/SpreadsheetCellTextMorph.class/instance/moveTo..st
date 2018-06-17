editing
moveTo: direction

	self grid selection removeAllCells.
	self replaceCell: (self cell perform: direction).
	
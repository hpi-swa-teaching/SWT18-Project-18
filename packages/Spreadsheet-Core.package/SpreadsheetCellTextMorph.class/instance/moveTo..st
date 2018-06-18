editing
moveTo: direction
	
	(self cell perform: direction)
		ifNotNilDo: [ :cell | 
			self grid selection removeAllCells.
			self replaceCell: cell]
	
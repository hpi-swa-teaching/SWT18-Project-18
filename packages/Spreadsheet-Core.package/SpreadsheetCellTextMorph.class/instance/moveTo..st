editing
moveTo: direction
	
	(self cell perform: direction)
		ifNotNilDo: [ :cell | 
			self grid selection clear.
			self replaceCell: cell]
	
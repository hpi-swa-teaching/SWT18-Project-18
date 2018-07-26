as yet unclassified
selectionBounds

	^ (Rectangle 
		origin: (self startCell position min: (self currentCell position))
		corner: (self startCell bottomRight max: (self currentCell bottomRight)))
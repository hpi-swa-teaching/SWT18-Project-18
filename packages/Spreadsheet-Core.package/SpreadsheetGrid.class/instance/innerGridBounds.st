layout
innerGridBounds

	^ Rectangle 
		origin: self data columns first cells first topLeft
		corner: self data columns last cells last bottomRight 
		
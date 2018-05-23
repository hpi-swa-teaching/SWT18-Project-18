layout
gridBounds

	^ Rectangle 
		origin: self columns first cells first topLeft
		corner: self columns last cells last bottomRight 
		
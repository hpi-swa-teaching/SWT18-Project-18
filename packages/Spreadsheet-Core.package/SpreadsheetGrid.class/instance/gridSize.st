layout
gridSize

	^Rectangle 
		origin: self position
		corner: self columns last cells last bottomRight 
		
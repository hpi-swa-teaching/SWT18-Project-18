layout
gridSize

	^Rectangle 
		origin: self markAllLabel position
		corner: self columns last cells last bottomRight 
		
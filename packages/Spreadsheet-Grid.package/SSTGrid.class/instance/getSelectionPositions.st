layout
getSelectionPositions

	^ {
		self selection startCell gridPosition.
		self selection currentCell gridPosition.
		self selection selectedCell gridPosition.}
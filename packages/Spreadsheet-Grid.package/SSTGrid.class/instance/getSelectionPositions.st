layout
getSelectionPositions

	^ {
		self selection cells originCell gridPosition.
		self selection cells cornerCell gridPosition.
		self selection selectedCell gridPosition.}
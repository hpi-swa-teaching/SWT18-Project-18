editing
moveEditorToNextCell: evt

	self grid selection removeAllCells.
	(self cell bottomCell) ifNil: [
		self grid addRowAfter].
	self grid editCell: (self cell bottomCell) event: evt. 
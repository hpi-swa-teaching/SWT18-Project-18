editing
moveEditorToNextCell: evt

	self grid selection removeAllCells.
	self grid editCell: self cell bottomCell event: evt. 
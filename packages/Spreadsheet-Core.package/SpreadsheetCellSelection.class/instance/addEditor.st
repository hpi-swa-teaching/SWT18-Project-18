event handling
addEditor 

	self editor: (SpreadsheetCellTextMorph on: grid).
	self add: self editor.
	self editor comeToFront.
	self editor replaceCell: self selectedCell.
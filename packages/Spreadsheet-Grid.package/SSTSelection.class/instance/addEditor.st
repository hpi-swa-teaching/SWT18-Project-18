editor
addEditor 

	self editor: (SSTEditor on: grid).
	self add: self editor.
	self editor comeToFront.
	self editor replaceCell: self selectedCell.
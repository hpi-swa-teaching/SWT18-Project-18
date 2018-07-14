editor
addEditor 

	self editor: (SSTEditor on: grid).
	self activeCellMorph add: self editor.
	self editor comeToFront.
	self editor replaceCell: self selectedCell.
	self dragging ifFalse:  [self removeDependentMorphs]
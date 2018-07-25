editor
addEditor 

	self editor: (SSTEditor on: self).
	self activeCellMorph add: self editor.
	self editor comeToFront.
	self editor replaceCell: self selectedCell.
	self currentStrategie = #cellDrag ifFalse:  [self removeDependentMorphs]
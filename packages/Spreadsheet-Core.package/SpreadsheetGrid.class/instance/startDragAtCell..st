event handling
startDragAtCell: aCell 

	self selection startDragAtCell: aCell.
	self addMorphBack: self selection.
	self dragging: true.
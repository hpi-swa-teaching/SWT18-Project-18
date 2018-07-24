cell dragging
stopDrag: evt
	
	(self dragging) ifTrue: [
		self newSelection: self topLeftCell to: self bottomRightCell.
		self addDependentMorphs].
	self dragging: false.
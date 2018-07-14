cell dragging
stopDrag: evt
	
	Transcript show: 'Stop drag'; cr.
	(self dragging) ifTrue: [
		self cells: (self grid getCellsFrom: self topLeftCell to: self bottomRightCell).
		self addDependentMorphs].
	self dragging: false.
	"Transcript show: 'Actual cells'; show: self cells."
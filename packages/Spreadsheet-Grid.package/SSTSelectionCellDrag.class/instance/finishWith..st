as yet unclassified
finishWith: anEvent

	(self dragging) ifTrue: [
		self selection 
			newSelection: self startCell to: self currentCell;
			addDependentMorphs].
	self dragging: false.
	self selection currentStrategie: nil.
editor
removeEditor 

	self editor ifNil: [ ^ self ]. 
	self selectedCell calculateFunction: self editor text. 
	self editor delete.
	self editor: nil.
	self dragging 
		ifFalse: [self addDependentMorphs]
editor
removeEditor 

	self editor ifNil: [ ^ self ]. 
	self selectedCell calculateFunction: self editor text. 
	editor delete.
	self editor: nil.
	self addDependentMorphs.
	
	Transcript show: 'Removed Editor';cr.
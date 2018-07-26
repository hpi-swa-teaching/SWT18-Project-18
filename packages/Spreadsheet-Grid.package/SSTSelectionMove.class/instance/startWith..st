as yet unclassified
startWith: aPosition
	
	self grabbedCell: (self selection grid cellAt: aPosition).
	self cellOffset: (self offsetFor: self grabbedCell and: self selection cells originCell).
	self targetMorph: (BorderedMorph new
		color: Color transparent;
		borderColor: Color blue;
		bounds: self selection cells bounds ).
	self selection grid add: self targetMorph 
initialization
addEdgeGrips 

	self type == #rowLabel ifTrue: [
		self addMorphBack: (BottomGripMorph new target: self; position: self position).].
	self type == #columnLabel ifTrue: [
		self addMorphBack: (RightGripMorph new target: self; position: self position).].
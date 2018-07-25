updating
updatePositions 

	| x y |
	
	x := self position x.
	y := self position y + self defaultSize y.
	self data rows do: [:row |
		row updatePosition: x@y.
		row height: (((row cells collect: [ :cell | cell actualSize y]) max) max: row height).
		y := row bottom].
	self rowEdgeGrips copy do: [:edgeGrip |
		self data rows size < edgeGrip index
			ifTrue: [self rowEdgeGrips remove: edgeGrip]
			ifFalse: [edgeGrip position: edgeGrip label position x  @ (edgeGrip label bottom  - (edgeGrip height))]].
	x := self position x + self defaultSize x.
	y := self position y.
	self data columns do: [:column |
		column updatePosition: x@y.
		x := column right].
	self columnEdgeGrips copy do: [:edgeGrip |
		self data columns size < edgeGrip index 
			ifTrue: [self columnEdgeGrips remove: edgeGrip]
			ifFalse: [edgeGrip position: (edgeGrip label right - (edgeGrip width)) @ edgeGrip label position y]].
	self data columns do: [ :column |
		self data rows do: [ :row |
			self updateCellWith: row and: column]].
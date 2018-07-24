as yet unclassified
updatePositions 

	| x y aMorph |
	
	aMorph := self.
	
	x := aMorph position x.
	y := aMorph position y + aMorph defaultSize y.
	aMorph data rows do: [:row |
		row updatePosition: x@y.
		row height: (((row cells collect: [ :cell | cell actualSize y]) max) max: row height).
		y := row bottom].
	aMorph rowEdgeGrips do: [:edgeGrip |
		aMorph data rows size < edgeGrip index
		ifTrue: [aMorph rowEdgeGrips remove: edgeGrip]
		ifFalse: [edgeGrip position: edgeGrip label position x  @ (edgeGrip label bottom  - (edgeGrip height))]].
	x := aMorph position x + aMorph defaultSize x.
	y := aMorph position y.
	aMorph data columns do: [:column |
		column updatePosition: x@y.
		x := column right].
	aMorph columnEdgeGrips do: [:edgeGrip |
		aMorph data columns size < edgeGrip index 
			ifTrue: [aMorph columnEdgeGrips remove: edgeGrip]
			ifFalse: [edgeGrip position: (edgeGrip label right - (edgeGrip width)) @ edgeGrip label position y]].
	aMorph data columns do: [ :column |
		aMorph data rows do: [ :row |
			self updateCellWith: row and: column]].
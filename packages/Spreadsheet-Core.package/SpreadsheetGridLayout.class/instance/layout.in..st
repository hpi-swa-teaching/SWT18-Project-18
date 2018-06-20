as yet unclassified
layout: aMorph in: aBox

	| x y newEditorSize |
	
	newEditorSize := (aMorph editor calculateSizeForWidth: aMorph editor width) minSize y.
	aMorph editor cell ifNotNilDo: [ :cell | cell row height: (newEditorSize max: cell row height)].
	x := aMorph position x.
	y := aMorph position y + aMorph defaultSize y.
	aMorph rows do: [:row |
		row updatePosition: x@y.
		row edgeGrip position: row position x  @ (row bottom  - (row edgeGrip height)).
		y := row bottom].
	x := aMorph position x + aMorph defaultSize x.
	y := aMorph position y.
	aMorph columns do: [:column |
		column updatePosition: x@y.
		column edgeGrip position: (column right - (column edgeGrip width)) @ column position y.
		x := column right].
	aMorph columns do: [ :column |
		aMorph rows do: [ :row |
			self updateCellOf: aMorph row: row column: column]].
	aMorph bounds: aMorph gridSize.
	self updateEditorFor: aMorph.
	self updateSelectionFor: aMorph.
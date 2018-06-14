as yet unclassified
layout: aMorph in: aBox

	| x y newEditorSize|
	newEditorSize := (aMorph editor calculateSizeForWidth: aMorph editor width) minSize y.
	aMorph editor cell ifNotNilDo: [ :cell | cell row height: (newEditorSize max: cell row height)].
	x := aMorph markAllLabel position x.
	y := aMorph markAllLabel bottom.
	aMorph rows do: [:row |
		row updatePosition: x@y.
		y := row bottom].
	x := aMorph markAllLabel right.
	y := aMorph markAllLabel position y.
	aMorph columns do: [:column |
		column updatePosition: x@y.
		x := column right].
	aMorph columns do: [ :column |
		aMorph rows do: [ :row |
			self updateCellOf: aMorph row: row column: column]].
	self updateEditorFor: aMorph
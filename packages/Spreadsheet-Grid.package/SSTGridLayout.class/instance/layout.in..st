as yet unclassified
layout: aMorph in: aBox

	| x y newEditorSize editor |
	
	editor := aMorph selection editor.
	editor notNil ifTrue: [
		newEditorSize := (editor calculateSizeForWidth: editor width) minSize y.
		aMorph selection selectedCell ifNotNilDo: [ :cell | 
			cell row height: (newEditorSize max: cell row height). 
			editor height: (newEditorSize max: cell row height)]].
	
	x := aMorph position x.
	y := aMorph position y + aMorph defaultSize y.
	aMorph data rows do: [:row |
		row updatePosition: x@y.
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
			self updateCellOf: aMorph row: row column: column]].
	aMorph bounds: aMorph outerGridBounds.
	editor notNil ifTrue: [self updateEditorFor: aMorph].
	
	self updateSelectionFor: aMorph.
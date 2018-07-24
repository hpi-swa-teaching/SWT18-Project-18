as yet unclassified
layout: aMorph in: aBox

	| newEditorSize editor |
	
	editor := aMorph selection editor.
	editor 
		ifNil: [
			"aMorph selection updateDependentMorphs"]
		ifNotNil: [
			newEditorSize := (editor calculateSizeForWidth: editor width) minSize y.
			aMorph selection selectedCell ifNotNilDo: [ :cell | 
				cell row height: (newEditorSize max: cell row height). 
				editor height: (newEditorSize max: cell row height)]].
	aMorph updatePositions.
	aMorph bounds: aMorph outerGridBounds.
	editor notNil ifTrue: [self updateEditorFor: aMorph].
	
	self updateSelectionFor: aMorph.
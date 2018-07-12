as yet unclassified
updateEditorFor: aMorph
	| cell newCell |
	cell := aMorph selection editor cell.
	newCell := cell.
	(cell) ifNil: [^ self].
	(cell rowIndex > (aMorph data rows size)) ifTrue: [ newCell := (cell topCell)].
	(cell columnIndex > (aMorph data columns size)) ifTrue: [ newCell := cell leftCell].
	aMorph selection editor cell: newCell.
	aMorph selection editor bounds: newCell bounds.
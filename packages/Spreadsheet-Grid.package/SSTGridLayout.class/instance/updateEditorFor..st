as yet unclassified
updateEditorFor: aMorph
	| cell newCell |
	cell := aMorph selection editor cell.
	newCell := cell.
	(cell) ifNil: [^ self].
	(cell row index > (aMorph data rows size)) ifTrue: [ newCell := (cell topCell)].
	(cell column index > (aMorph data columns size)) ifTrue: [ newCell := cell leftCell].
	aMorph selection editor cell: newCell.
	aMorph selection editor bounds: newCell bounds.
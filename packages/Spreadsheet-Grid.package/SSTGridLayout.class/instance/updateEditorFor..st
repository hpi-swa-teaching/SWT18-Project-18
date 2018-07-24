updating
updateEditorFor: aMorph
	| cell newCell |
	cell := aMorph selection selectedCell.
	newCell := cell.
	(cell) ifNil: [^ self].
	(cell rowIndex > (aMorph data rows size)) ifTrue: [ newCell := (cell topCell)].
	(cell columnIndex > (aMorph data columns size)) ifTrue: [ newCell := cell leftCell].
	aMorph selection editor replaceCell: newCell.
	aMorph selection editor bounds: newCell bounds.
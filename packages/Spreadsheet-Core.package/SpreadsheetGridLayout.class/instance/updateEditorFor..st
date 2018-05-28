as yet unclassified
updateEditorFor: aMorph
	| cell |
	cell := aMorph editor cell.
	(aMorph editor cell) ifNil: [^ self].
	(aMorph editor cell row index >= (aMorph rows size)) ifTrue: [ cell := (aMorph editor cell topCell)].
	(aMorph editor cell column index >= (aMorph columns size)) ifTrue: [ cell := (aMorph editor cell leftCell)].
	aMorph editor cell: cell.
	aMorph editor adjustToCell.
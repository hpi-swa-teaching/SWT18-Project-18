updating
updateSelectionFor: aMorph

	aMorph selection startCell ifNil: [^ self].
	aMorph selection adjustSize.
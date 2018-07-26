as yet unclassified
updateSelectionFor: aMorph

	aMorph selection selectedCell ifNil: [^ self].
	aMorph selection currentStrategie ifNotNil: [^ self].
	aMorph selection adjustSize.
	aMorph selection updateDependentMorphs.
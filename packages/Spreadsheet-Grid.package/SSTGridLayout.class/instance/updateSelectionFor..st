as yet unclassified
updateSelectionFor: aMorph

	aMorph selection startCell ifNil: [^ self].
	aMorph selection adjustSize.
	aMorph selection updateDependentMorphs.
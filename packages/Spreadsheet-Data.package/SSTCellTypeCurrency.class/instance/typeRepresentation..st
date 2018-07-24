as yet unclassified
typeRepresentation: aText

	aText = '' ifTrue: [ ^ 0 ].
	^ (aText asNumber roundTo: 0.01)
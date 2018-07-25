as yet unclassified
cellWidth

	(self cornerCell isNil or: (self originCell isNil)) ifTrue: [ ^ 0 ].
	^ self cornerCell columnIndex - self originCell columnIndex + 1
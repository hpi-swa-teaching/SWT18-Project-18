as yet unclassified
cellHeight

	(self cornerCell isNil or: (self originCell isNil)) ifTrue: [ ^ 0 ].
	^ self cornerCell rowIndex - self originCell rowIndex + 1
as yet unclassified
deleteReference: aCell

	aCell = self predecessorCell ifTrue: [ self predecessorCell: nil ].
	aCell = self successorCell ifTrue: [ self successorCell: nil ].
	(self predecessorCell = nil and: [ self successorCell = nil]) ifTrue: [self line delete] 
accessing
startLabel: anObject
	
	anObject ifNotNil: [self startCell: anObject cells first].
	startLabel := anObject
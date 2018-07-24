as yet unclassified
setterCalled

	self interpreterStack isEmpty ifFalse: [
		(self isConnectedTo: self interpreterStack top cell)
			ifTrue: [ self error: 'Circular dependency detected' ]
			ifFalse: [ self interpreterStack top cell dependentCells add: self]].
	self calcRepresentationChanged
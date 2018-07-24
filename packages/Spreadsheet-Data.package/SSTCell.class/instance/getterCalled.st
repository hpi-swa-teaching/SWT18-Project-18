as yet unclassified
getterCalled

	self interpreterStack isEmpty ifFalse: [
		| cell |
		cell := self interpreterStack top cell.
		( cell isConnectedTo: self)
			ifTrue: [ self error: 'Circular dependency detected' ]
			ifFalse: [self observingCells add: cell.
				cell observedCells add: self.]]
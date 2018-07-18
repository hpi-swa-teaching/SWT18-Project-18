binding
bindCellAccessors: aMethod

	aMethod literals copy withIndexDo: [ :literal :index | 
		((literal isVariableBinding) and: [ self cellRegex matches: literal key ]) ifTrue: [
			| aCell |
			
			aCell := self cellFromString: literal key.
			self observeCell: aCell.
			aMethod literalAt: index put: literal key => (self cellFromString: literal key) ]].

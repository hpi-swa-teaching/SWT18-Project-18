representation management
fetchCalcRepresentation
	
	self calcRepresentation ifNotNil: [
			self contentsWrapped: (self calcRepresentation) asString.
		].
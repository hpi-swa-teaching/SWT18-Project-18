as yet unclassified
fetchCalcRepresentation
	
	self calcRepresentation ifNotNil: [
			self contentsWrapped: (self calcRepresentation) asString.
		].
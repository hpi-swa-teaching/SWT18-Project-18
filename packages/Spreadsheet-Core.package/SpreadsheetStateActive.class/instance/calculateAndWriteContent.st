as yet unclassified
calculateAndWriteContent 
	(self context cell) ifNil: [^ self].
		self context cell calcRepresentation: self text.
		self context processCells: (self context getDependentCellsFor: self text).
		self context text: (self context calculateResult: self text) asString.
		self context writeContent.
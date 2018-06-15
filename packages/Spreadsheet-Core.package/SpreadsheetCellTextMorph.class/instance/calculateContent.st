calculateResult
calculateContent 

	(self cell) ifNil: [^ self].
		self cell calcRepresentation: self text.
		self processCells: (self getObservedCellsFor: self text).
		self text: (self calculateResult: self text) asString
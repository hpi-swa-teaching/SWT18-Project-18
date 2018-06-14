calculateResult
calculateAndWriteContent
	(self cell) ifNil: [^ self].
	self cell calcRepresentation: self text.
	self processCells: (self getDependentCellsFor: self text).
	self text: (self calculateResult: self text) asString.
	self writeContent.
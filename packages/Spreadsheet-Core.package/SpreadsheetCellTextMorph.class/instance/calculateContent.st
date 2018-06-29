calculateResult
calculateContent 

	| resultAsString |

	(self cell) ifNil: [^ self].
		self cell calcRepresentation: self text.
		self processCells: (self getObservedCellsFor: self text).
		resultAsString := (self calculateResult: self text) asString.
		(self cell cellType) ifNotNil: [
			Transcript show: (self cell cellType correspondingRegex matches: resultAsString).
			(self cell cellType correspondingRegex matches: resultAsString) ifTrue: [
				resultAsString := self cell cellType formatCellContent: resultAsString].
		].
		self text: resultAsString
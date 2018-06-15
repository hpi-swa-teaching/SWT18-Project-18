calculateResult
notifyDependents: aCell

	aCell dependentCells do: [ :cell |
		cell text: (self calculateResult: cell calcRepresentation) asString.
		self notifyDependents: cell ].
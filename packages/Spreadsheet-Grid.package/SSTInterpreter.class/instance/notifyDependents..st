notifying
notifyDependents: aCell

	aCell dependentCells do: [ :cell |
		cell text: (self calculateResult: cell calcRepresentation for: cell) asString.
		self notifyDependents: cell].
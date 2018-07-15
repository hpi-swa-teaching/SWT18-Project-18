as yet unclassified
notifyDependents: aCell

	aCell dependentCells do: [ :cell |
		cell text: (SSTInterpreter calculateContent: cell on: self)].
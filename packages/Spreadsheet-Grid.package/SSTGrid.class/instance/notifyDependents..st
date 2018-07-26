perform calculations
notifyDependents: aCell

	aCell observingCells do: [ :cell |
		cell text: (SSTInterpreter calculateContent: cell on: self)].
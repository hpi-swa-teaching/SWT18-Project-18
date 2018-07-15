perform calculations
calcRepresentationChanged: aCell

	aCell text: (SSTInterpreter calculateContent: aCell on: self).
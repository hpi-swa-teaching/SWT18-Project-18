as yet unclassified
setUp

	grid := SSTGrid new.
	cellC3 := grid cellAtIndex: 3@3.
	cellA1 := grid cellAtIndex: 1@1.
	cellA2 := grid cellAtIndex: 1@2.
	cellB1 := grid cellAtIndex: 2@1.
	cellB2 := grid cellAtIndex: 2@2.
	cellCollection := { cellA1. cellA2. cellB1. cellB2. cellC3}.
	cellCollection do: [ :cell | cell color: Color red ].
	interpreter := SSTInterpreter on: grid.
as yet unclassified
setUp 

	super setUp.
	
	grid := tool grid. 
	selection := grid selection.
	gridCell := grid cellAtRowIndex: 3 colIndex: 3.
	gridCell text: '6'.
	gridCell calcRepresentation: '= 3+3'.
	dragMorph := selection moveMorphs at: 1.
	selection moveTo: gridCell
as yet unclassified
setUp 

	super setUp.
	
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	grid := tool grid. 
	selection := grid selection.
	gridCell := grid cellAtRowIndex: 3 colIndex: 3.
	gridCell text: '6'.
	gridCell calcRepresentation: '= 3+3'.
	copyMorph := selection copyMorph.
	selection moveTo: gridCell.
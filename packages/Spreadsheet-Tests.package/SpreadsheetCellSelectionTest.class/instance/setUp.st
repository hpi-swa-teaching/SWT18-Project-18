as yet unclassified
setUp 

	super setUp.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	grid := tool grid.
	gridCell := grid cellAtRowIndex: 3 colIndex: 3.
	selection := grid selection.
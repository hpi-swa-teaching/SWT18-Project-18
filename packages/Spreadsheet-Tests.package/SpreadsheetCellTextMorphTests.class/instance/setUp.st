as yet unclassified
setUp
	
	super setUp.
	textMorph := SpreadsheetCellTextMorph new.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	functionWindow := tool functionWindow.
	grid := tool grid. 
	editor := grid editor.
	gridCell := grid cellAtRowIndex: 1 colIndex: 1.
	gridCell text: '6'.
	gridCell calcRepresentation: '=3+3'.
	gridCell width: 120.
	gridCell height: 10.
	
as yet unclassified
setUp
	
	super setUp.
	textMorph := SpreadsheetCellTextMorph new.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	functionWindow := tool functionWindow.
	grid := tool grid. 
	selection := grid selection.
	selection addEditor editor.
	editor := selection editor.
	gridCell := grid cellAtRowIndex: 3 colIndex: 3.
	gridCell text: '6'.
	gridCell calcRepresentation: '=3+3'.
	gridCell width: 120.
	gridCell height: 10.
	
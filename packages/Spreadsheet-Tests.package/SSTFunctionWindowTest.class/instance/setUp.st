as yet unclassified
setUp 
	
	super setUp.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	functionWindow := tool functionWindow.
	selection := tool grid selection.
	selection addEditor.
	editor := selection editor.
	gridCell := tool grid cellAtRowIndex: 1 colIndex: 1.
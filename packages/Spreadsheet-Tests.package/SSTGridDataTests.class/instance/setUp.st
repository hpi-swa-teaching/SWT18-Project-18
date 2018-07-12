as yet unclassified
setUp
	
	super setUp.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	data := tool grid data.
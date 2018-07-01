as yet unclassified
setUp
	
	super setUp.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	columnGrip := tool grid columnEdgeGrips first.
	rowGrip := tool grid rowEdgeGrips first.
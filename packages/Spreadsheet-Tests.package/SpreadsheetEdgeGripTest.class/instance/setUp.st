as yet unclassified
setUp
	
	super setUp.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	columnGrip := tool grid columnEdgegrips first.
	rowGrip := tool grid rowEdgegrips first.
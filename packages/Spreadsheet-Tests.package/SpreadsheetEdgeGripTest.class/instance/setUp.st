as yet unclassified
setUp
	
	super setUp.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	columnGrip := tool grid columns first edgeGrip.
	rowGrip := tool grid rows first edgeGrip.
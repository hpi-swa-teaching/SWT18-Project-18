as yet unclassified
setUp
	
	super setUp.
	window := SpreadsheetWindow new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	matcher := PHTestMatcher new subject: window.
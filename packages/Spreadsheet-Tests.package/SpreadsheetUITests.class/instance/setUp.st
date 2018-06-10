as yet unclassified
setUp
	
	super setUp.
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool';
					yourself.
	matcher := PHTestMatcher new subject: tool.
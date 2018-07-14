as yet unclassified
setUp
	
	super setUp.
	
	tool := SpreadsheetTool new 
					openInWindowLabeled: 'SpreadsheetTool' inWorld: world;
					yourself.
	cell := SSTCell new.
	grid := tool grid.
	self assert: grid ~= nil.
	gridCell := grid cellAtRowIndex:  1 colIndex: 2. 
	self assert: gridCell ~= nil.
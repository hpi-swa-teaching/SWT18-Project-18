as yet unclassified
setUp
	
	super setUp.
	
	cell := SpreadsheetCell new.
	grid := SpreadsheetGrid newWith: SpreadsheetFunctionWindow new.
	self assert: grid ~= nil.
	gridCell := grid cellAtRowIndex:  1 colIndex: 2. 
	self assert: gridCell ~= nil.
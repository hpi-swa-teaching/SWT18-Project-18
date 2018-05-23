as yet unclassified
setUp
	
	cell := SpreadsheetCell new.
	grid := SpreadsheetGrid new.
	self assert: grid ~= nil.
	gridCell := grid cellAtRowIndex:  0 colIndex: 0. 
	self assert: gridCell ~= nil.
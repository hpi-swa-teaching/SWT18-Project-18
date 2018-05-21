as yet unclassified
setUp
	
	cell := SpreadsheetCell new.
	grid := SpreadsheetGrid new.
	self assert: grid ~= nil.
	gridCell := grid cellAtRowIndex: 1 colIndex: 1. 
	self assert: gridCell ~= nil.
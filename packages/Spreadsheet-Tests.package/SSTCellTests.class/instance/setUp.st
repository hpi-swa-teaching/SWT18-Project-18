as yet unclassified
setUp
	
	super setUp.
	
	cell := SSTCell new.
	grid := SSTGrid new.
	self assert: grid ~= nil.
	gridCell := grid cellAtRowIndex:  1 colIndex: 2. 
	self assert: gridCell ~= nil.
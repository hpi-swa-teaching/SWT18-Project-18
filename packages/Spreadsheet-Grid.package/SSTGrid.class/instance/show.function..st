event handling
show: evt function: aSymbol

	| startPoint cornerPoint string cell |
	
	startPoint := self selection topLeftIndex .
	cornerPoint := self selection bottomRightIndex.
	string := '= ', '(', ((startPoint x) + 64) asCharacter, (startPoint y) asString, ' to: ', ((cornerPoint x) + 64) asCharacter, (cornerPoint y) asString, ')', ' contents ' , aSymbol.
	cell := self cellAtIndex: ( startPoint x @ (cornerPoint y + 1) ).
	self selection writeFunction: string in: (cell) event: evt.
	
	
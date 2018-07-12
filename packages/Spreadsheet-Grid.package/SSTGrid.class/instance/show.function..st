event handling
show: evt function: aSymbol

	| startPoint cornerPoint string cell |
	
	startPoint := self selection startCell gridPosition min: (selection currentCell gridPosition).
	cornerPoint := self selection startCell gridPosition max: (selection currentCell gridPosition).
	string := '=', aSymbol, '(', ((startPoint x) + 64) asCharacter, (startPoint y) asString, ':', ((cornerPoint x) + 64) asCharacter, (cornerPoint y) asString, ')'.
	cell := self cellAtRowIndex: cornerPoint y + 1 colIndex: startPoint x.
	self writeFunction: string in: (cell) event: evt.
	
	
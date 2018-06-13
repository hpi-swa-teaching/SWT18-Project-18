event handling
show: evt function: aSymbol

	| startPoint cornerPoint string|
	
	startPoint := selection startCell gridPosition min: (selection currentCell gridPosition).
	cornerPoint := selection startCell gridPosition max: (selection currentCell gridPosition).
	string := '=', aSymbol, '(', ((startPoint x) + 64) asCharacter, (startPoint y) asString, ':', ((cornerPoint x) + 64) asCharacter, (cornerPoint y) asString, ')'.
	self editCell: (self cellAtRowIndex: cornerPoint y + 1 colIndex: startPoint x) event: evt.
	self editor text: string.
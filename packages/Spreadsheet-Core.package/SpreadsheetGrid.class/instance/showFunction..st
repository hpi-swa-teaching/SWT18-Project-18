event handling
showFunction: aSymbol

	| startPoint cornerPoint string|
	
	startPoint := selection startCell gridPosition min: (selection currentCell gridPosition).
	cornerPoint := selection startCell gridPosition max: (selection currentCell gridPosition).
	string := '=', aSymbol, '(', ((startPoint x) + 64) asCharacter, (startPoint y) asString, ':', ((cornerPoint x) + 64) asCharacter, (cornerPoint y) asString, ')'.
	self editor replaceCell: (self cellAtRowIndex: cornerPoint y + 1 colIndex: startPoint x).
	self editor text: string.
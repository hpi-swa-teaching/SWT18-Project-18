public
show: evt function: aSymbol

	| startPoint cornerPoint string cell |
	
	startPoint := self selection topLeftCell gridPosition.
	cornerPoint := self selection bottomRightCell gridPosition.
	string := '= ', '(', ((startPoint x) + 64) asCharacter, (startPoint y) asString, ' to: ', ((cornerPoint x) + 64) asCharacter, (cornerPoint y) asString, ')', ' contents ' , aSymbol.
	cell := self cellAtIndex: ( startPoint x @ (cornerPoint y + 1) ).
	cell ifNil: [ 
		self addRowAfter.
		cell := self cellAtIndex: ( startPoint x @ (cornerPoint y + 1)) ].
	self selection writeFunction: string in: (cell) event: evt.
	
	
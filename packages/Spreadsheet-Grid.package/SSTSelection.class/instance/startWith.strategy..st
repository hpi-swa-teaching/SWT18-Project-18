event handling
startWith: anObject strategy: aSymbol
	
	self currentStrategie: (self strategies at: aSymbol).
	self currentStrategie startWith: anObject.
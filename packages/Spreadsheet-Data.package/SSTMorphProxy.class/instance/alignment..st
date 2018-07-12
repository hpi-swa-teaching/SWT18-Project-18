as yet unclassified
alignment: aSymbol
	" one of #left, #center, #right, #justify "
	
	self layout alignment: aSymbol.
	self updateText.
	self changed
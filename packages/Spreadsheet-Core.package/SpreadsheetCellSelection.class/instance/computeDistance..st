label
computeDistance: aSymbol

	^ (self currentLabel position perform: aSymbol) - (self startLabel position perform: aSymbol)
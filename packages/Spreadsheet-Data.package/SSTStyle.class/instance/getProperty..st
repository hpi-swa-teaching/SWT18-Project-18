as yet unclassified
getProperty: aSymbol 

	^ properties at: aSymbol ifAbsent: [ self defaultFor: aSymbol ]
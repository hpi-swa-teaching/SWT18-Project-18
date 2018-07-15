as yet unclassified
getProperty: aSymbol 

	^ properties at: aSymbol ifAbsent: [ self class defaultFor: aSymbol ]
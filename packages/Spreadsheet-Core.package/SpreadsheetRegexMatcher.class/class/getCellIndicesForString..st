as yet unclassified
getCellIndicesForString: aString
	"extracts the indices for a given string"
	| cellString cellCollection fromCellPoint toCellPoint cellPointCollection |
	Transcript show: 'call';cr.
	Transcript show: aString;cr.
	
	cellString := self getCellstringFromString: aString.
	cellCollection := self cellRegex matchesIn: cellString.
	cellPointCollection := OrderedCollection new.
	
	(cellCollection size = 2) ifFalse: [^ self ].
	fromCellPoint := self getColumnAndRowFromCellLabel: (cellCollection at: 1).
	toCellPoint :=self getColumnAndRowFromCellLabel: (cellCollection at: 2).
	
	^ OrderedCollection with: fromCellPoint with: toCellPoint
	
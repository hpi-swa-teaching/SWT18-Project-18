as yet unclassified
getCellIndicesForString: aString
	"extracts the indices for a given string"
	| cellRegex cellString cellCollection fromCellPoint toCellPoint cellPointCollection |
	Transcript show: 'call';cr.
	Transcript show: aString;cr.
	cellRegex := '[a-zA-Z]+[0-9]+' asRegex.
	
	cellString := self getCellstringFromString: aString.
	cellCollection := cellRegex matchesIn: cellString.
	cellPointCollection := OrderedCollection new.
	
	(cellCollection size = 2) ifFalse: [^ self ].
	fromCellPoint := self getColumnAndRowFromCellLabel: (cellCollection at: 1).
	toCellPoint :=self getColumnAndRowFromCellLabel: (cellCollection at: 2).
	
	^ OrderedCollection with: fromCellPoint with: toCellPoint
	
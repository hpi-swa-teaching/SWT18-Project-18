as yet unclassified
getCellIndicesForString: aString
	"extracts the indices for a given string"
	| cellString cellCollection fromCellPoint toCellPoint cellPointCollection |
	
	cellString := self getCellstringFromString: aString.
	cellCollection := '[a-zA-Z]+\w+' asRegex matchesIn: cellString.
	cellPointCollection := OrderedCollection new.
	
	(cellCollection size = 2) ifFalse: [^ nil ].
	fromCellPoint := self getColumnAndRowFromCellLabel: (cellCollection at: 1).
	toCellPoint :=self getColumnAndRowFromCellLabel: (cellCollection at: 2).
	
	^ OrderedCollection with: fromCellPoint with: toCellPoint
	
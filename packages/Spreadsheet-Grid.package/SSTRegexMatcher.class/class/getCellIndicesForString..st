as yet unclassified
getCellIndicesForString: aString
	"extracts the indices for a given string"
	|cellCollection |
	
	cellCollection := '[a-zA-Z]+\w+' asRegex matchesIn: (self getCellstringFromString: aString).
	(cellCollection size = 2) ifFalse: [^ nil ].
	
	^ OrderedCollection with: (self getColumnAndRowFromCellLabel: (cellCollection at: 1) ) with:  (self getColumnAndRowFromCellLabel: (cellCollection at: 2)) 
	
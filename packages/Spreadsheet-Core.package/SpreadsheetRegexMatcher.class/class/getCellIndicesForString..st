as yet unclassified
getCellIndicesForString: aString
	"extracts the indices for a given string"

	| cellRegex cellString cellCollection fromCellPoint toCellPoint cellPointCollection |
	cellRegex := '[a-zA-Z]+[0-9]+' asRegex.
	
	cellString := self getCellstringFromString: aString.
	cellCollection := cellRegex matchesIn: cellString.
	cellPointCollection := OrderedCollection new.
	
	self assert: cellCollection size > 1.
	fromCellPoint := self getColumnAndRowFromCellLabel: (cellCollection at: 1).
	toCellPoint :=self getColumnAndRowFromCellLabel: (cellCollection at: 2).
	
	(fromCellPoint x) to: (toCellPoint x) do: [ :xDim |
			(fromCellPoint y) to: (toCellPoint y) do: [ :yDim |
					cellPointCollection add: (xDim@yDim)
				]
		].
	^cellPointCollection
	
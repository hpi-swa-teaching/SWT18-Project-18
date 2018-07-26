as yet unclassified
formatCellContent: aText
	| numberAsString |
	numberAsString := ((aText asNumber * 100) roundTo: 0.01) asString.
	((numberAsString findTokens: '\.') last size = 1) ifTrue: [numberAsString := numberAsString, '0'].
	^ numberAsString, '%'
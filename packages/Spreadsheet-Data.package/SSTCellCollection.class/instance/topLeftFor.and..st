as yet unclassified
topLeftFor: cell1 and: cell2

	| minPosition |
	minPosition := cell1 gridPosition min: (cell2 gridPosition).
	^ self data cellAtIndex: minPosition
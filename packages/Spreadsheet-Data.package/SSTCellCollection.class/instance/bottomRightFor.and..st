as yet unclassified
bottomRightFor: cell1 and: cell2

	| maxPosition |
	maxPosition := cell1 gridPosition max: (cell2 gridPosition).
	^ self data cellAtIndex: maxPosition
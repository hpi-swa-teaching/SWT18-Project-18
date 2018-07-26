grid access
cellFromString: aString
	
	| gridPosition |
	gridPosition := self data getColumnAndRowFromCellLabel: aString.
	^ self data cellAtIndex: gridPosition
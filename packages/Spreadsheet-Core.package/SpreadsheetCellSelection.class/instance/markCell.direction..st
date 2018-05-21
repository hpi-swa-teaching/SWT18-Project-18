as yet unclassified
markCell: aCell direction: aDirection 

	|newCell|
	newCell := aCell perform: aDirection.
	newCell ifNotNil:
		[(self selectionBounds containsPoint: newCell position )
			ifTrue: [
				self addCell: newCell.
				self markCell: newCell direction: aDirection]]
	
as yet unclassified
updateCurrentCell: aDirection
	self currentCell: (self currentCell perform: aDirection).
	self setSelectionBounds.
	
	(self cells includes: self currentCell) 
		ifTrue: [ 
			self cells copy do: [ :cell | (self selectionBounds containsPoint: cell position) ifFalse: [self removeCell: cell]].
		]
		ifFalse: [
			self addCell: self currentCell.
			{#leftCell.
			#rightCell.
			#topCell.
			#bottomCell } do: [ :dir | self markCell: self currentCell direction: dir ]]
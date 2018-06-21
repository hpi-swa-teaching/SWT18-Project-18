cell
replaceCellsFrom: startCell to: cornerCell

	| set newCell oldCell |
	
	set := OrderedCollection new.
  	(self topLeftIndex  y) to: (self bottomRightIndex y) do: [:row |
   		(self topLeftIndex  x) to: (self bottomRightIndex  x) do: [:column |
			newCell := set add: (self grid cellAtRowIndex: row colIndex: column).
			oldCell := self cells remove: newCell ifAbsent: [nil].
			"oldCell ifNil: [newCell markAsSelected]"]].
	self removeAllCells.
	self cells: set.
cell
replaceCellsFrom: startCell to: cornerCell

	| set startPoint cornerPoint newCell oldCell |
	
	set := Set new.
	startPoint := startCell gridPosition min: (cornerCell gridPosition).
	cornerPoint := startCell gridPosition max: (cornerCell gridPosition).
  	(startPoint y) to: (cornerPoint y) do: [:row |
   		(startPoint x) to: (cornerPoint x) do: [:column |
			newCell := set add: (self grid cellAtRowIndex: row colIndex: column).
			oldCell := self cells remove: newCell ifAbsent: [nil].
			oldCell ifNil: [newCell markAsSelected]]].
	self removeAllCells.
	self cells: set.
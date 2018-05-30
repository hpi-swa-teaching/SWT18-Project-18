cell
replaceCellsFrom: startCell to: cornerCell
	| set startPoint endPoint newCell oldCell|
	set := Set new.
	startPoint := {startCell row index. cornerCell row index} min @ ( {startCell column index. cornerCell column index} min).
	endPoint := {startCell row index. cornerCell row index} max @ ( {startCell column index. cornerCell column index} max).
	(startPoint x) to: (endPoint x) do: [ :row |
		(startPoint y) to: (endPoint y) do: [ :column |
			newCell := set add: (self grid cellAtRowIndex: row colIndex: column).
			 oldCell := self cells remove: newCell ifAbsent: [nil].
			oldCell ifNil: [newCell markAsSelected]]].
	self removeAllCells.
	self cells: set.
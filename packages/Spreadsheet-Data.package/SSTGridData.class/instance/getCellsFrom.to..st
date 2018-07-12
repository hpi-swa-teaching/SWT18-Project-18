accessing cells
getCellsFrom: startCell to: cornerCell
	| collection |
	collection := OrderedCollection new.
	(startCell rowIndex) to: (cornerCell rowIndex) do: [ :row |
		(startCell columnIndex) to: (cornerCell columnIndex) do: [ :column |
			collection add: (self cellAtRowIndex: row colIndex: column).]].
	^ collection
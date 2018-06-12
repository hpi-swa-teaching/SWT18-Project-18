cell
replaceCellsFrom: startCell to: cornerCell

	| collection |
	
  	collection := OrderedCollection new.
  	(startCell row index) to: (cornerCell row index) do: [:row |
   		(startCell column index) to: (cornerCell column index) do: [:column |
      		collection add: (self cellAtRowIndex: row colIndex: column)]].
	^ collection
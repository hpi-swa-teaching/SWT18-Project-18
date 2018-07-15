helper
newSelection: startCell to: endCell

	self cells: (self grid getCellsFrom: startCell to: endCell).
	self selectionChanged
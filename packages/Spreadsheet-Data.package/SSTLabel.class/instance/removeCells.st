as yet unclassified
removeCells

	self cells do: [ :cell | cell column: nil. cell row: nil ].
	self cells: nil.
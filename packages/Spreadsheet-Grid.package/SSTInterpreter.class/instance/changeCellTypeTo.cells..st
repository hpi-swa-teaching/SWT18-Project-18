as yet unclassified
changeCellTypeTo: aType cells: cells

	" Only changes the type and formats cell contents "
	cells do: [ :aCell |
		
		aCell changeCellTypeTo: aType.
		self calculateContent: aCell.
	].
	self grid changed.
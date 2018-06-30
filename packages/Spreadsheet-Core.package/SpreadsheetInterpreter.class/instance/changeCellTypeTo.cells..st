as yet unclassified
changeCellTypeTo: aType cells: cells

	" Only changes the type and formats cell contents "
	" ToDo: update dependentCells "
	
	cells do: [ :aCell |
		
		aCell changeCellTypeTo: aType.
		(aCell cellType) ifNotNil: [
			(aCell cellType correspondingRegex matches: aCell text) ifTrue: [
				aCell text: (aCell cellType formatCellContent: aCell text)]].
	].
	self grid changed.
as yet unclassified
newFor: aLabel on: aGrid

	^ (self new)
		index: aLabel index;
		grid: aGrid;
		openInSpreadsheet;
		yourself
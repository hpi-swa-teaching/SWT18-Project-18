as yet unclassified
formatCellContent: aText

	^ (self typeRepresentation: aText) printFormat: #(1 2 3 $- 3 1)
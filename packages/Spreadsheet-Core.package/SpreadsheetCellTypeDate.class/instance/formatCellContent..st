as yet unclassified
formatCellContent: aText

	^ (Date fromString: aText) printFormat: #(1 2 3 $- 3 1)
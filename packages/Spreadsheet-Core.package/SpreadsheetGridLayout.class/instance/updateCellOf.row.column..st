as yet unclassified
updateCellOf: aMorph row: row column: column
	| cell |
	
	cell := aMorph cellAtRowIndex: row index colIndex: column index.
	cell width: column width.
	cell height: row height.
	cell position: column position x @ (row position y).
	cell leftEdge line setVertices: {cell topLeft. cell bottomLeft}.
	cell rightEdge line setVertices: {cell topRight. cell bottomRight}.
	cell topEdge line setVertices: {cell topLeft. cell topRight}.
	cell bottomEdge line setVertices: {cell bottomLeft. cell bottomRight}.
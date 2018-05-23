layout
createCellAtRow: row col: column
	|cell edge |
	cell := SpreadsheetCell row: row column: column on: self.
	
	"left Cell"
	(cell leftCell) 
		 ifNil: [ cell leftEdge: (edge := (SpreadsheetEdge on: self from: cell topLeft to: cell bottomLeft)). edge successorCell: cell. edge predecessorCell: nil ]
		ifNotNil: [ cell leftEdge: (edge := cell leftCell rightEdge). edge successorCell: cell. edge redraw ].
	"right Cell"
	(cell rightCell ) 
		 ifNil: [ cell rightEdge: (edge := (SpreadsheetEdge on: self from: cell topRight to: cell bottomRight)). edge predecessorCell: cell]
		ifNotNil: [ cell rightEdge: (edge := cell rightCell leftEdge). edge predecessorCell: cell. edge redraw].
	"Top Cell"
	(cell topCell) 
		 ifNil: [ cell topEdge: (edge := (SpreadsheetEdge on: self from: cell topLeft to: cell topRight)). edge successorCell: cell.  edge predecessorCell: nil]
		ifNotNil: [ cell topEdge: (edge := cell topCell bottomEdge). edge successorCell: cell. edge redraw ].
	"Bottom Cell"
	(cell bottomCell) 
		 ifNil: [ cell bottomEdge:(edge := (SpreadsheetEdge on: self from: cell bottomLeft  to: cell bottomRight)). edge predecessorCell: cell ]
		ifNotNil: [ cell bottomEdge: (edge := cell bottomCell topEdge). edge predecessorCell: cell. edge redraw ].
	
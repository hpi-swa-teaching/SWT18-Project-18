layout
createCellAtRow: row col: column
	|cell edge |
	cell := SpreadsheetCell row: row column: column on: self.
	
	"left Cell"
	(cell leftCell) 
		 ifNil: [ cell leftSide: (edge := (SpreadsheetEdge on: self from: cell topLeft to: cell bottomLeft)). edge successorCell: cell. edge predecessorCell: nil ]
		ifNotNil: [ cell leftSide: (edge := cell leftCell rightSide). edge successorCell: cell. edge redraw ].
	"right Cell"
	(cell rightCell ) 
		 ifNil: [ cell rightSide: (edge := (SpreadsheetEdge on: self from: cell topRight to: cell bottomRight)). edge predecessorCell: cell]
		ifNotNil: [ cell rightSide: (edge := cell rightCell leftSide). edge predecessorCell: cell. edge redraw].
	"Top Cell"
	(cell topCell) 
		 ifNil: [ cell topSide: (edge := (SpreadsheetEdge on: self from: cell topLeft to: cell topRight)). edge successorCell: cell.  edge predecessorCell: nil]
		ifNotNil: [ cell topSide: (edge := cell topCell bottomSide). edge successorCell: cell. edge redraw ].
	"Bottom Cell"
	(cell bottomCell) 
		 ifNil: [ cell bottomSide:(edge := (SpreadsheetEdge on: self from: cell bottomLeft  to: cell bottomRight)). edge predecessorCell: cell ]
		ifNotNil: [ cell bottomSide: (edge := cell bottomCell topSide). edge predecessorCell: cell. edge redraw ].
	
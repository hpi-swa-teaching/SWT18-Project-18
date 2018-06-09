initialization
initializeLeftEdge
	
	(self leftCell) 
		ifNil: [
			self leftEdge: 
				((SpreadsheetEdge on: self from: self topLeft to: self bottomLeft)
					successorCell: self;
					predecessorCell: nil;
					yourself)]
		ifNotNil: [
			(self rightCell notNil and: [self leftCell rightEdge == self rightCell leftEdge])
				ifFalse: [
					self leftEdge: 
						((self leftCell rightEdge)
							successorCell: self;
							redraw;
							yourself)]
				ifTrue: [
					self leftEdge: 
						((SpreadsheetEdge on: self from: self topLeft to: self bottomLeft)
							successorCell: self;
							predecessorCell: self leftCell;
							yourself).
					self leftCell rightEdge: self leftEdge] ].
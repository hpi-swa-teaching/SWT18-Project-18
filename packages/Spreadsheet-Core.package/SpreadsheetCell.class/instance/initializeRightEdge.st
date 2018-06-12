initialization
initializeRightEdge
	
	(self rightCell) 
		ifNil: [
			self rightEdge: 
				((SpreadsheetEdge on: self from: self topRight to: self bottomRight)
					predecessorCell: self;
					successorCell: nil;
					yourself)]
		ifNotNil: [
			(self leftCell notNil and: [self rightCell leftEdge == self leftCell rightEdge])
				ifFalse: [
					self rightEdge: 
						((self rightCell leftEdge)
							predecessorCell: self;
							redraw;
							yourself)]
				ifTrue: [
					self rightEdge: 
						((SpreadsheetEdge on: self from: self topRight to: self bottomRight)
							predecessorCell: self;
							successorCell: self rightCell;
							yourself).
					self rightCell leftEdge: self rightEdge] ].
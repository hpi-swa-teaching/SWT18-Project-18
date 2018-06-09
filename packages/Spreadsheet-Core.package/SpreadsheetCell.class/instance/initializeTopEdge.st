initialization
initializeTopEdge
	
	(self topCell) 
		ifNil: [
			self topEdge: 
				((SpreadsheetEdge on: self from: self topLeft to: self topRight)
					successorCell: self;
					predecessorCell: nil;
					yourself)]
		ifNotNil: [
			(self bottomCell notNil and: [self topCell bottomEdge == self bottomCell topEdge])
				ifFalse: [
					self topEdge: 
						((self topCell bottomEdge)
							successorCell: self;
							redraw;
							yourself)]
				ifTrue: [
					self topEdge: 
						((SpreadsheetEdge on: self from: self topLeft to: self topRight)
							successorCell: self;
							predecessorCell: self topCell;
							yourself).
					self topCell bottomEdge: self topEdge] ].
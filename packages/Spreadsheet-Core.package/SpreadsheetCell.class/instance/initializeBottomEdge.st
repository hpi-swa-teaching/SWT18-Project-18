initialization
initializeBottomEdge
	
	(self bottomCell) 
		ifNil: [
			self bottomEdge: 
				((SpreadsheetEdge on: self from: self bottomLeft to: self bottomRight)
					predecessorCell: self;
					successorCell: nil;
					yourself)]
		ifNotNil: [
			(self topCell notNil and: [self bottomCell topEdge == self topCell bottomEdge])
				ifFalse: [
					self bottomEdge:
						((self bottomCell topEdge)
							predecessorCell: self;
							redraw;
							yourself)]
				ifTrue: [
					self bottomEdge: 
						((SpreadsheetEdge on: self from: self bottomLeft to: self bottomRight)
							predecessorCell: self;
							successorCell: self bottomCell;
							yourself).
					self bottomCell topEdge: self bottomEdge] ].
event handling
mouseDown: evt
	self active 
		ifTrue: [super mouseDown: evt]
		ifFalse: 	[
			evt hand waitForClicksOrDrag: self event: evt.
			self cell dragging: true.
			self grid startDragAtCell: self cell]
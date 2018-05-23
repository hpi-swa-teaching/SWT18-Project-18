event handling
mouseUp: evt
	
	self active
		ifTrue: [ super mouseUp: evt]
		ifFalse: [
			self cell dragging: false.
			self grid stopDragAtCell: self cell]
	
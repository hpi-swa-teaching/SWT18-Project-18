event handling
mouseMove: evt
	
	self active 
		ifTrue: [super mouseMove: evt]
		ifFalse: [
			self cell dragging ifTrue: [
			self grid updateDragPosition: evt position]]
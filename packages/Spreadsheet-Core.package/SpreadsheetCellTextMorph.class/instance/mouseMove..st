event handling
mouseMove: evt
	
	self state = #active ifTrue: [
		super mouseMove: evt.
		Transcript show: 'Moved active'.
		^ self].
	self state = #drag ifTrue: [
		self grid updateDragPosition: evt position.
		^ self].
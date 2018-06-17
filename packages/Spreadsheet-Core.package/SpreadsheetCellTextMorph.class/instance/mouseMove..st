event handling
mouseMove: evt
	
	self state = #active ifTrue: [
		super mouseMove: evt.
		^ self].
	self state = #drag ifTrue: [
		self grid updateDragPosition: evt position.
		^ self].
event handling
mouseUp: evt
	
	self state = #active ifTrue: [
		super mouseUp: evt.
		^ self].
	self state = #drag ifTrue: [
		self grid stopDrag: evt.
		self waitForDoubleClick: evt.
		^ self].

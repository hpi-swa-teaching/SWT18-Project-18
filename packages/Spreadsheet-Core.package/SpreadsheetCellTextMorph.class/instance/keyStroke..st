event handling
keyStroke: evt
	
	self state = #active ifTrue: [
		super keyStroke: evt.
		evt keyValue = 13 
			ifFalse: [
				self update
			]
			ifTrue: [
				self crAction: evt
			].
		^ self].
	self state = #passive ifTrue: [
		self newText: evt.
		self keyStroke: evt.
		^ self]
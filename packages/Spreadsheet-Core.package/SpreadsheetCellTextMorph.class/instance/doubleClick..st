event handling
doubleClick: evt
	
	self state = #passive ifTrue: [
		self editText: evt.
		^ self].
event handling
keyStroke: evt
	
	super keyStroke: evt.
	evt keyValue = self eventKey 
		ifFalse: [
			self update
		]
		ifTrue: [
			self grid selection editor crAction: evt
		]
as yet unclassified
keyStroke: evt
	
	super keyStroke: evt.
	evt keyValue = 13 
		ifFalse: [
			self update
		]
		ifTrue: [
			self crAction: evt
		]
		
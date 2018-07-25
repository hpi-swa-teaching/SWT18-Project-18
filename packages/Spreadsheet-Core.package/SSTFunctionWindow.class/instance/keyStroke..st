as yet unclassified
keyStroke: evt
	"Handle a keystroke event."
	
	super keyStroke: evt.
	evt keyValue = self eventKey 
		ifFalse: [
			self update
		]
		ifTrue: [
			self grid selection editor crAction: evt
		]
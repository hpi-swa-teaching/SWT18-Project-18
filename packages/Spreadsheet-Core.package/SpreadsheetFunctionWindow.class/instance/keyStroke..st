as yet unclassified
keyStroke: evt
	"Handle a keystroke event."
	
	super keyStroke: evt.
	evt keyValue = 13 
		ifFalse: [
			self update
		]
		ifTrue: [
			self grid editor crAction: evt
		]
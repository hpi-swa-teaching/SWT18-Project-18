managing files
notifyOf: aString in: aColor

	| aNotification |
	
	aNotification := PHNotification text: aString.
	self addMorphFront: aNotification.
	aNotification
		position: self position;
		color: aColor;
		displayFor: 2000 onDismiss: []
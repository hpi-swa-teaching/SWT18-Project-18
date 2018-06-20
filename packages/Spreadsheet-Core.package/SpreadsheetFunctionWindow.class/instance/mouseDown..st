as yet unclassified
mouseDown: evt

	super mouseDown: evt.
	self grid editor state: #active.
	self update
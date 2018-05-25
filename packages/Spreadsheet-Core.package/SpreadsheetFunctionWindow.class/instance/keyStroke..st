as yet unclassified
keyStroke: evt
	"Handle a keystroke event."
	
	super keyStroke: evt.
	self updateCurrentActiveCell.
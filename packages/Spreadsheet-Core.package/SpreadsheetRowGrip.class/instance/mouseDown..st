as yet unclassified
mouseDown: anEvent
	| markerPosition |
	
	markerPosition := self position + (0 @ self height/2).
	super mouseDown: anEvent.
	self drawLineFrom: markerPosition to: markerPosition x @ self grid right.
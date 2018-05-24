as yet unclassified
mouseDown: anEvent
	| markerPosition |
	
	markerPosition := self position + (self width @ 0).
	super mouseDown: anEvent.
	self drawLineFrom: markerPosition to: markerPosition x @ self grid bottom
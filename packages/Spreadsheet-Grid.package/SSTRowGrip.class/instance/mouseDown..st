event handling
mouseDown: anEvent
	| markerPosition |
	
	markerPosition := self position + (0 @ self height).
	super mouseDown: anEvent.
	self drawLineFrom: markerPosition to: self grid right @ markerPosition y.
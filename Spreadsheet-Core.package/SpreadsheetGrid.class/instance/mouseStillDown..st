event handling
mouseStillDown: anEvent
	
	(self grabbed = true) ifTrue: [self position: anEvent position].
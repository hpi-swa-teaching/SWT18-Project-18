event handling
keyStroke: evt
	
	| key |
	super keyStroke: evt.
	key := evt keyString.
	(key = '<cr>') ifTrue: [
		^ self moveTo: #bottom event: evt].
	(key = '<tab>') ifTrue: [
		^ self moveTo: #right event: evt].
	(key = '<Shift-cr>') ifTrue: [
		^ self moveTo: #top event: evt].
	(key = '<Shift-tab>') ifTrue: [
		^ self moveTo: #left event: evt].
	self update
event handling
startDrag: evt

	self active
		ifTrue: [ super startDrag: evt]
		ifFalse: [ ^ self ]
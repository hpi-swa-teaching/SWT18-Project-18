accessing
swapData: anObject

	data := anObject.
	self selection fullMoveTo: (self data cellAtIndex: 1@1).
	^anObject
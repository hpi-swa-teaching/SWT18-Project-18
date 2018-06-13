as yet unclassified
testMouseLeave
	
	self mouseEnter: columnGrip.
	self assert: columnGrip color = Color blue.
	self mouseLeave: columnGrip.
	self assert: columnGrip color = Color transparent .
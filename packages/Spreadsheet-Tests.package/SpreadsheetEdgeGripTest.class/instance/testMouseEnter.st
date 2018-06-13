as yet unclassified
testMouseEnter

	self assert: columnGrip color = Color transparent.
	self mouseEnter: columnGrip.
	self assert: columnGrip color = Color blue.
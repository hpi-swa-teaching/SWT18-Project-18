as yet unclassified
testContentsAccessor

	cell contents: 'test'.
	self assert: cell contentMorph contents = 'test'.
	self assert: cell contents ='test'
as yet unclassified
testWriteContent

	editor cell: gridCell.
	editor text: '10'.
	editor writeContent.
	self assert: gridCell text = '10'.
	
	
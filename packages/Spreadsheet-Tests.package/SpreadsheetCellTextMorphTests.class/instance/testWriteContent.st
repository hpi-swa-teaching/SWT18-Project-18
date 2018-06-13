as yet unclassified
testWriteContent

	editor cell: gridCell.
	editor text: '10'.
	editor calcRepresentation: '5+5'.
	editor writeContent.
	self assert: gridCell text = '10'.
	self assert: gridCell calcRepresentation = '5+5'.
	self assert: editor active = false.
	
	
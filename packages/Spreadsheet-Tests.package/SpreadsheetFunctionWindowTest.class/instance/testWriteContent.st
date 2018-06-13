as yet unclassified
testWriteContent

	editor cell: gridCell.
	functionWindow text: '10'.
	functionWindow calcRepresentation: '5+5'.
	functionWindow writeContent.
	self assert: editor text = '10'.
	self assert: editor calcRepresentation = '5+5'.

as yet unclassified
testCalculateAndWriteContent

	editor cell: gridCell.
	editor state: #active.
	editor text: '=5+5'.
	editor calculateAndWriteContent.
	self assert: gridCell text = '10'.
	self assert: gridCell calcRepresentation = '=5+5'.
	
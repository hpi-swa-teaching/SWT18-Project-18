as yet unclassified
testWriteContent

	| nextCell |
	editor cell: gridCell.
	nextCell := gridCell bottomCell.
	nextCell text: '5'.
	functionWindow text: '10'.
	self click: functionWindow.
	self keyStroke: editor key: Character cr.
	self assert: gridCell text = '10'.
	self assert: editor cell = nextCell.
	self assert: editor text = '5'.

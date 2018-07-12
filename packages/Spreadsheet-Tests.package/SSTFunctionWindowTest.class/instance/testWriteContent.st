as yet unclassified
testWriteContent

	| nextCell |
	selection moveTo: gridCell.
	nextCell := gridCell bottomCell.
	nextCell text: '5'.
	functionWindow text: '10'.
	self click: functionWindow.
	self keyStroke: functionWindow key: Character cr.
	self assert: gridCell text = '10'.
	self assert: selection selectedCell = nextCell.
	self assert: selection selectedCell text = '5'.

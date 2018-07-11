as yet unclassified
testKeyEnter
	
	editor cell: gridCell.
	editor text: '=3+3'.
	editor update.
	self click: editor.
	self keyStroke: editor key: Character cr.
	self assert: gridCell text = '6'.
	self assert: gridCell calcRepresentation = '=3+3'
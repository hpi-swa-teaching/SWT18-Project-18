as yet unclassified
testKeyEnter
	
	editor cell: gridCell.
	functionWindow  text: '=3+3'.
	functionWindow update.
	self keyStroke: functionWindow key: Character cr.
	self assert: gridCell text = '6'.
	self assert: gridCell calcRepresentation = '=3+3'
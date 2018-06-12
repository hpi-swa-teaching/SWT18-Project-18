as yet unclassified
testKeyEnter

	editor text: '=3+3'.
	editor update.
	self keyStroke: editor key: Character cr.
	self assert: editor text = '6'.
	self assert: functionWindow text = '=3+3'.
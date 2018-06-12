as yet unclassified
testKeyStroke

	editor text: ''.
	self keyStroke: editor key: $a.
	self assert: editor text = 'a'.
	self assert: tool functionWindow text = 'a'

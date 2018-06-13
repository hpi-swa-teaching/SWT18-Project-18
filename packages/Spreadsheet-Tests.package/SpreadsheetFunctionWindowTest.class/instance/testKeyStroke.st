as yet unclassified
testKeyStroke

	functionWindow text: ''.
	self keyStroke: functionWindow key: $a.
	self assert: functionWindow text = 'a'.
	self assert: editor text = 'a'

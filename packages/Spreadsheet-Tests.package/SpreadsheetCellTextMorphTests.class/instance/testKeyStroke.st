as yet unclassified
testKeyStroke
	
	editor text: ''.
	self click: editor.
	editor state: #passive.
	self keyStroke: editor key: $a.
	self assert: editor text = 'a'.
	self assert: tool functionWindow text = 'a'

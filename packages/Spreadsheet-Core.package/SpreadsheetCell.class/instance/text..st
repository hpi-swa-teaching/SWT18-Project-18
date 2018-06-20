accessing
text: aString

	text := aString ifNil: [''].

	self internalText: text
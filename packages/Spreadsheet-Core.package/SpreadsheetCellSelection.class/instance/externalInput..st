external
externalInput: text

	self editor ifNil: [ self addEditor ].
	self editor text: text.
event handling
newText: evt
	
	self addEditor.
	evt hand newKeyboardFocus: self editor.
	self editor
		text: '';
		keyStroke: evt.
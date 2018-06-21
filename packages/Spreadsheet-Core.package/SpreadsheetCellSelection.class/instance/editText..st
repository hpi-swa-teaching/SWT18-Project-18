as yet unclassified
editText: evt

	self addEditor.
	self editor text: self selectedCell calcRepresentation.
	evt hand newKeyboardFocus: nil.
	evt hand newKeyboardFocus: self editor.
editor
editText: evt

	Transcript show: 'Edit called'.
	self addEditor.
	self editor text: self selectedCell calcRepresentation.
	evt hand newKeyboardFocus: nil.
	evt hand newKeyboardFocus: self editor.
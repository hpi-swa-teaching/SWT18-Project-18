editing
editText: evt

	self state: #active.
	self text: self cell calcRepresentation.
	evt hand newKeyboardFocus: nil.
	evt hand newKeyboardFocus: self.
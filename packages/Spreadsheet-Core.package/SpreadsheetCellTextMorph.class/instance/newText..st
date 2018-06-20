editing
newText: evt

	self state: #active.
	self text: ''.
	evt hand newKeyboardFocus: nil.
	evt hand newKeyboardFocus: self.
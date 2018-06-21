event handling
mouseDown: evt

	self layoutPolicy: nil. "Temporarily remove policy for slightly better performance"
	self selection clear.
	self clickAt: evt.
			
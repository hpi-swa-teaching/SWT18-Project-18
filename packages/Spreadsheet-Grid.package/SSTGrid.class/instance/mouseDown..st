event handling
mouseDown: evt

	self layoutPolicy: SSTStaticGridLayout new. "Temporarily remove policy for slightly better performance"
	self selection clear.
	self clickAt: evt.
			
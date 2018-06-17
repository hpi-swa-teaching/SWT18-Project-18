event handling
mouseDown: evt
	
	self state = #active ifTrue: [
		super mouseDown: evt.
		^ self].
	self state = #passive ifTrue: [
		evt hand newKeyboardFocus: self.
		self placeCursorAt: (self cursorFromEvent: evt).
		evt hand waitForClicksOrDrag: self event: evt.
		self grid startDragAtCell: self cell.
		self state: (#drag).
		^ self].
	self state = #doubleClick ifTrue: [
		self editText: evt.
		^ self.
		]
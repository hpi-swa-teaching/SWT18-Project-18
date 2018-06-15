event handling
keyboardFocusChange: weHaveFocus

	self state = #active ifTrue: [
		super keyboardFocusChange: weHaveFocus.
		^ self].
		
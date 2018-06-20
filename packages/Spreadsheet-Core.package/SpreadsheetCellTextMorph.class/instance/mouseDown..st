event handling
mouseDown: evt
	
	self state = #active ifTrue: [
		super mouseDown: evt.
		^ self].
	self state = #passive ifTrue: [
		evt hand newKeyboardFocus: self.
		self grid startDragAt: self cell.
		self state: #drag.
		^ self].
	self state = #doubleClick ifTrue: [
		self editText: evt.
		^ self].
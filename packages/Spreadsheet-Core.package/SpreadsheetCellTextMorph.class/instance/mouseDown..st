event handling
mouseDown: evt
	
	self state = #active ifTrue: [
		super mouseDown: evt.
		^ self].
	self state = #passive ifTrue: [
		evt hand newKeyboardFocus: self.
		self state: #drag.
		self grid startDragAtCell: self cell.
		^ self].
	self state = #doubleClick ifTrue: [
		self editText: evt.
		^ self].
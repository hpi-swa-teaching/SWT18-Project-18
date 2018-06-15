event handling
keyboardFocusChange: weHaveFocus
	
	"super keyboardFocusChange: weHaveFocus."
	self state = #active ifTrue: [
		super keyboardFocusChange: weHaveFocus].
	"self state = #passive ifTrue: [
		self state: #active.]"
		
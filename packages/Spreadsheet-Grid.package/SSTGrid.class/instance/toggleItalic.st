public
toggleItalic

	self selection cells do: [ :cell |
		cell fontStyle = 'normal' 
			ifTrue: [ cell italic ]
			ifFalse: [ cell fontStyle: 'normal']]
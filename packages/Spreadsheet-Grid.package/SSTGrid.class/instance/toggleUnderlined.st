public
toggleUnderlined

	self selection cells do: [ :cell |
		cell underlined
			ifTrue: [ cell underlined: false ]
			ifFalse: [ cell underlined: true]]
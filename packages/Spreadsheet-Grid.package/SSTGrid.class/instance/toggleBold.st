public
toggleBold

	self selection cells do: [ :cell |
		cell fontWeight = 'normal' 
			ifTrue: [ cell bold ]
			ifFalse: [ cell fontWeight: 'normal']]
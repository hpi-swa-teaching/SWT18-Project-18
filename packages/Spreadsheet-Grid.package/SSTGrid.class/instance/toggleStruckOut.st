public
toggleStruckOut

	self selection cells do: [ :cell |
		cell struckOut
			ifTrue: [ cell struckOut: false ]
			ifFalse: [ cell struckOut: true]]
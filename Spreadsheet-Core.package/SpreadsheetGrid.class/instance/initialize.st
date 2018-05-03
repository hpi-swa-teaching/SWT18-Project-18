as yet unclassified
initialize
	
	super initialize.
	self 
		position: self standardPosition;
		openInWorld.
	(1 to: self standardGridSize x) do: [ :a | self addRow ].
	(1 to: self standardGridSize y) do: [ :a | self addColumn ]
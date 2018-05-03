initialization
initialize
	
	super initialize.
	self 
		position: self standardPosition;
		height: self buttonSize;
		width: self buttonSize;
		color: Color white;
		openInWorld.
	(1 to: self standardGridSize x) do: [ :a | self addRow ].
	(1 to: self standardGridSize y) do: [ :a | self addColumn ]
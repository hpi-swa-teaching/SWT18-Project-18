compiling
tearDownCompilerFrom: anExpression

	self allocatedCells do: [ :aCell | aCell interpreterStack pop ].
	self allocatedCells: nil.
	self cell: nil.
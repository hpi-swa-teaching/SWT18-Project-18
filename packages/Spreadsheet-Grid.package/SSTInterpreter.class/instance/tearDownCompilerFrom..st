compiling
tearDownCompilerFrom: anExpression

	self unobserveAll.
	self observeCells.
	self observedCells: nil.
	self unbindVariablesIn: anExpression.
	cell := nil.
	environment := nil.
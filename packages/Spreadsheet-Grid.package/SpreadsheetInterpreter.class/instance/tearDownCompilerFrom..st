compiling
tearDownCompilerFrom: anExpression

	self unbindVariablesIn: anExpression.
	cell := nil.
	environment := nil.
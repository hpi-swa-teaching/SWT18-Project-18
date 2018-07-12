compiling
setUpCompilerFrom: anExpression for: aCell

	cell := aCell.
	environment := Environment default.
	self bindVariablesIn: anExpression.
	self unobserveAll: cell.
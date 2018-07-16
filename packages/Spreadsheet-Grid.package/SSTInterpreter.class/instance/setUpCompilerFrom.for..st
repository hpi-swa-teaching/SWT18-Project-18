compiling
setUpCompilerFrom: anExpression for: aCell

	cell := aCell.
	"unobserve all cells before to prevent Errors when manipulating other cells "
	self unobserveAll.
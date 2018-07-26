compiling
setUpCompilerFrom: anExpression for: aCell

	self cell: aCell.
	"unobserve all cells before to prevent Errors when manipulating other cells "
	self cell unobserveAll.
compiling
tearDownCompilerFrom: anExpression

	Transcript show: 'Tear down called';cr.
	"self observeCells."
	self allocatedCells do: [ :aCell | aCell interpreterStack pop ].
	self allocatedCells: nil.
	cell := nil.
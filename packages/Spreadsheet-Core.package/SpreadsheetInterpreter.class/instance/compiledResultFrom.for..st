compiling
compiledResultFrom: anExpression for: aCell
	| result expression |
	
	context := SpreadsheetCompileContext new.
	context grid: self grid.
	context cell: aCell.
	
	expression := context getCompilableExpression: anExpression.
	result := (Compiler evaluate: expression for: context "on: Error do: [ :exception | self showError: exception. ^ '#ERROR']").
	result class = SpreadsheetCell ifTrue: [ ^ '#COMMAND' ].
	result class = SpreadsheetGrid ifTrue: [ ^ '#COMMAND' ].
	
	context := nil.
	^ result asString
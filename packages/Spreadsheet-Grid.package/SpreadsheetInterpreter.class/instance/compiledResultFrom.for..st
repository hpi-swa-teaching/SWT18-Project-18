compiling
compiledResultFrom: anExpression for: aCell
	| result |
	
	self setUpCompilerFrom: anExpression for: aCell.
	
	self hasCircularDependencies ifTrue: [ self resolveCircularDependency. result := '#CIRC' ].
	[ result := Compiler evaluate: anExpression for: cell] on: Error do: [ :exception | self showError: exception. result :=  '#ERROR'].
	result class = SpreadsheetCell ifTrue: [ result :='#COMMAND' ].
	result class = SpreadsheetGrid ifTrue: [ result := '#COMMAND' ].
	(result isKindOf: Morph) ifTrue: [ result := '#Morph' ].
	
	self tearDownCompilerFrom: anExpression.
	
	^ result asString
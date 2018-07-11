compiling
compiledResultFrom: anExpression for: aCell
	| result expression |
	
	cell := aCell.
	environment := Environment default.
	
	expression := self bindVariablesIn: anExpression.
	self hasCircularDependencies ifTrue: [ self resolveCircularDependency. ^ '#CIRC' ].
	result := ([Compiler evaluate: expression environment:  environment] on: Error do: [ :exception | self showError: exception. ^ '#ERROR']).
	result class = SpreadsheetCell ifTrue: [ ^ '#COMMAND' ].
	result class = SpreadsheetGrid ifTrue: [ ^ '#COMMAND' ].
	(result isKindOf: Morph) ifTrue: [ ^ '#Morph' ].
	cell := nil.
	environment := nil.
	^ result asString
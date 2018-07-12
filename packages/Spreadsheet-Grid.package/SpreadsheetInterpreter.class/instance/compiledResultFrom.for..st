compiling
compiledResultFrom: anExpression for: aCell
	| result |
	
	cell := aCell.
	environment := Environment default.
	
	self bindVariablesIn: anExpression.
	self hasCircularDependencies ifTrue: [ self resolveCircularDependency. ^ '#CIRC' ].
	result := ([(Compiler new) evaluate: anExpression in: nil to: cell environment: environment notifying: nil ifFail: nil logged: false] on: Error do: [ :exception | self showError: exception. ^ '#ERROR']).
	result class = SpreadsheetCell ifTrue: [ ^ '#COMMAND' ].
	result class = SpreadsheetGrid ifTrue: [ ^ '#COMMAND' ].
	(result isKindOf: Morph) ifTrue: [ ^ '#Morph' ].
	cell := nil.
	environment := nil.
	^ result asString
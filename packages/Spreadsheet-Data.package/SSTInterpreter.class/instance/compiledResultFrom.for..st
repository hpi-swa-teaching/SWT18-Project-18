compiling
compiledResultFrom: anExpression for: aCell
	| result cue method |
	
	self setUpCompilerFrom: anExpression for: aCell.
	
	cue := CompilationCue source: anExpression context: nil receiver: aCell class: aCell class environment: aCell class environment requestor: nil.
	method := (Compiler new compileCue: cue noPattern: true ifFail: []) generate.
	self bindVariablesIn: method.
	[result := cue receiver
		withArgs: (cue context ifNil: [#()] ifNotNil: [{cue context}])
		executeMethod: method] on: Error do: [:exception | [self showError: exception] ensure: [self tearDownCompilerFrom: anExpression]. result := '#ERROR'].
				
	result class = SSTCell ifTrue: [ result :='#COMMAND' ].
	result class = SSTGrid ifTrue: [ result := '#COMMAND' ].
	(result isKindOf: Morph) ifTrue: [ result := '#MORPH' ].
	
	self tearDownCompilerFrom: anExpression.
	
	^ result
compiling
compiledResultFrom: anExpression for: aCell
	| result class compiler cue method parseTree |
	
	self setUpCompilerFrom: anExpression for: aCell.
	
	compiler := Compiler new. 
	class := compiler classForReceiver: aCell context: nil.
	cue := CompilationCue source: anExpression context: nil receiver: aCell class: class environment: class environment requestor: nil.
	
	parseTree := (compiler compileCue: cue noPattern: true ifFail: []).
	method := parseTree generate.
	self bindVariablesIn: method.
	"self hasCircularDependencies
		ifTrue: [ self observedCells: nil.result := '#CIRC' ]
		ifFalse: ["
			[result := cue receiver
				withArgs: (cue context ifNil: [#()] ifNotNil: [{cue context}])
				executeMethod: method] on: Error do: [:exception | [self showError: exception] ensure: [self tearDownCompilerFrom: anExpression]. result := '#ERROR'].
				
	result class = SSTCell ifTrue: [ result :='#COMMAND' ].
	result class = SSTGrid ifTrue: [ result := '#COMMAND' ].
	(result isKindOf: Morph) ifTrue: [ result := '#MORPH' ].
	
	self tearDownCompilerFrom: anExpression.
	
	^ result
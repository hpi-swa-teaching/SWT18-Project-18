as yet unclassified
calculateResult

	| currentContent expression result |
	currentContent := self text asString.
	self calcRepresentation: currentContent.
	
	(currentContent isEmpty) ifFalse: [ 
		((currentContent at: 1) = $=) ifTrue: [
				expression := ((currentContent subStrings: '=') at: 1).
				result := Compiler evaluate: expression.
				self text: result asString.
			].
		].
	 self writeContent.
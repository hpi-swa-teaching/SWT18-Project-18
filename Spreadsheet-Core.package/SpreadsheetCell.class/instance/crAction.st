as yet unclassified
crAction
	"Return the action to perform when encountering a CR in the input"
	| currentContent expression result |
	currentContent := self contents asString.
	
	(currentContent isEmpty) ifFalse: [ 
		((currentContent at: 1) = $=) ifTrue: [
				expression := ((currentContent subStrings: '=') at: 1).
				result := Compiler evaluate: expression.
				self contentsWrapped: result asString.
			].
		].
	
	^self valueOfProperty: #crAction
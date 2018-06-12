as yet unclassified
getFunctionFromString: aString
	"return a function embedded within a string"

	| functionsDict matcher |
	functionsDict := self functionsDict.
	functionsDict keys do: [ :each |
			matcher := each asRegex.
			(matcher matches: aString) ifTrue: [
					^functionsDict at: each]].
	^nil
	
as yet unclassified
crAction
	"Return the action to perform when encountering a CR in the input"
	self 
		text: self calculateResult asString;
		writeContent.
	^self valueOfProperty: #crAction
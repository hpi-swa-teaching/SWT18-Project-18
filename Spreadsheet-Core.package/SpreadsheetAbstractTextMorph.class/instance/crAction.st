as yet unclassified
crAction
	"Return the action to perform when encountering a CR in the input"
	self 
		calculateResult;
		writeContent.
	^self valueOfProperty: #crAction
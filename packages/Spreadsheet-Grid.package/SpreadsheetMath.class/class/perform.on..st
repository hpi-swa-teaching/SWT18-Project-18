as yet unclassified
perform: anOperation on: aCollection
	"perfrom the given operation on the given collection using the regex matcher"

	(self listOfReduceOperations includes: anOperation)
	ifTrue: [
		^ aCollection reduce: anOperation
		].
	(aCollection respondsTo: anOperation)
	ifTrue: [
		^ aCollection perform: anOperation
		].
	^ self
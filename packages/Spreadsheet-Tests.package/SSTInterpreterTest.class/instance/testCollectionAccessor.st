as yet unclassified
testCollectionAccessor

	| collection |
	
	collection := { cellA1. cellA2. cellB1. cellB2 }.
	cellC3 calcRepresentation: '= (A1 to: B2) do: [ :cell | cell color: Color blue]'.
	interpreter calculateContent: cellC3.
	self assert: (collection allSatisfy: [ :cell | cell color = Color blue ]).
as yet unclassified
testGetCellContentForPointCollection

	| testValues aPointCollection aRow aColumn|
	
	testValues := OrderedCollection with: 'A' with: 'B' with: 'C' with: 'D'.
	aPointCollection := OrderedCollection new.
	
	self assert: [testValues size <= (grid standardGridSize x * grid standardGridSize y)].
	
	1 to: testValues size do: [:a |
		aColumn := (a \\ grid columns size).
		aRow := (a // grid columns size) + 1.
		(grid cellAtRowIndex:  aRow colIndex: aColumn) text: (testValues at: a).
		aPointCollection add: aColumn@aRow].
	
	self assert: [(grid getCellContentForPointCollection: aPointCollection) = testValues].
		
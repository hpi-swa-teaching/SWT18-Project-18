as yet unclassified
testGetCellContentForPointCollection

	| testValues aPointCollection aRow aColumn|
	
	testValues := OrderedCollection with: 'A' with: 'B' with: 'C' with: 'D'.
	aPointCollection := OrderedCollection new.
	
	self assert: [testValues size <= (data defaultGridSize x * data defaultGridSize y)].
	
	1 to: testValues size do: [:a |
		aColumn := (a \\ data columns size).
		aRow := (a // data columns size) + 1.
		(data cellAtRowIndex:  aRow colIndex: aColumn) text: (testValues at: a).
		aPointCollection add: aColumn@aRow].
	
	self assert: [(data getCellContentForPointCollection: aPointCollection) = testValues].
		
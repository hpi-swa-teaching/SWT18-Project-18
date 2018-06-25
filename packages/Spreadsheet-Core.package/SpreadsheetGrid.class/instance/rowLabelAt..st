grid access
rowLabelAt: aPoint

	| index |
	
	index := self binarySearchFor: self rows value: aPoint y lower: #top upper: #bottom.
	^ self rows at: index
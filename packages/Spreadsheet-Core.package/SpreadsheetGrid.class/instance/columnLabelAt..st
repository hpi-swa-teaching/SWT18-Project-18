grid access
columnLabelAt: aPoint

	| index |
	
	index := self binarySearchFor: self columns value: aPoint x lower: #left upper: #right.
	^ self columns at: index
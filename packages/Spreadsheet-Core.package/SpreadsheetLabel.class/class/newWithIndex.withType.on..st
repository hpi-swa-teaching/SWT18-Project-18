as yet unclassified
newWithIndex: anIndex withType: aType on: aGrid
" type can be #row or #column"

	^(self new)
		index: anIndex;
		type: aType;
		grid: aGrid; 
		showLabel.
as yet unclassified
newWithIndex: anIndex on: aGrid
" type can be #row or #column"

	^(self new)
		index: anIndex;
		grid: aGrid; 
		openInSpreadsheet.
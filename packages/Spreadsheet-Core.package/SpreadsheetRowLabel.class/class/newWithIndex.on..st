as yet unclassified
newWithIndex: anIndex on: aDataSet
" type can be #row or #column"

	^(self new)
		index: anIndex;
		data: aDataSet; 
		openInSpreadsheet.
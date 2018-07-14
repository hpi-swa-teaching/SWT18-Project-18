as yet unclassified
updateIndex
	
	self index: (self data rows indexOf: self ifAbsent: [self index]);
		updateLabelText.
	self cells do: [ :cell | cell rowIndex: self index ]
updating
updateIndex
	
	self index: (data rows indexOf: self ifAbsent: [self index]);
		updateLabelText.
	self cells do: [ :cell | cell rowIndex: self index ]
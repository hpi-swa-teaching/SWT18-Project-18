as yet unclassified
updateIndex
	
	self index: (self data columns indexOf: self ifAbsent: [self index]);
		updateLabelText.
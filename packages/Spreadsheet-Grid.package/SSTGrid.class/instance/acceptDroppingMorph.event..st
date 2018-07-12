event handling
acceptDroppingMorph: dropee event: evt

	| dialog |
	
	dialog := SSTMorphdropWindow title: 'Add Morph'.
	
	(dialog openFor: self)
		then: [ :d | self connect: dropee to: (self cellFromString: d cellString) content: d functionString];
		ifRejected: []
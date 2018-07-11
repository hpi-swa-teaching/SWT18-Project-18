event handling
acceptDroppingMorph: dropee event: evt

	| dialog |
	
	dialog := SpreadsheetMorphdropWindow new.
	
	(dialog openFor: self)
		then: [ :d | self connect: dropee to: (self cellFromString: d cellString) content: d functionString];
		ifRejected: []
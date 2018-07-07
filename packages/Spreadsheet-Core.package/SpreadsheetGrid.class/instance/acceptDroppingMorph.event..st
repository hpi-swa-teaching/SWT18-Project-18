event handling
acceptDroppingMorph: dropee event: evt

	Transcript show: 'Hello'.
	SpreadsheetDropContext for: dropee with: self data.
	self addMorphFront: dropee.
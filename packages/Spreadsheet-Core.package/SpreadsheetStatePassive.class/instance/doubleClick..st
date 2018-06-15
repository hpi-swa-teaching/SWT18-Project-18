as yet unclassified
doubleClick: evt

	self context state: (SpreadsheetStateActive with: self context).
	self context mouseDown: evt.
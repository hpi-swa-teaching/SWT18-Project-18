as yet unclassified
mouseDown: evt

	evt hand waitForClicksOrDrag: self context event: evt.
	self context grid startDragAtCell: self context cell.
	self context state: (SpreadsheetStateMove with: self context).
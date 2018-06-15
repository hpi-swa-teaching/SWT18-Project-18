as yet unclassified
mouseUp: evt

	self context grid stopDragAtCell:  evt position.
	self context state: (SpreadsheetStatePassive with: self context).
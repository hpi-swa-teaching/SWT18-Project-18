event handling
editCell: aCell event: evt
	
	self editor replaceCell: aCell.
	evt hand newKeyboardFocus: self editor
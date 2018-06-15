event handling
editCell: aCell event: evt
	
	self editor calculateAndWriteContent.
	self editor looseFocus: evt.
	self editor state: #passive.
	self editor gainFocus: evt.
	self editor replaceCell: aCell.
	
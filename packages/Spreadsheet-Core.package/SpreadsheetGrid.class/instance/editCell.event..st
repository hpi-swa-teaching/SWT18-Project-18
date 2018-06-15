event handling
editCell: aCell event: evt
	
	self editor calculateAndWriteContent.
	evt hand newKeyboardFocus: nil.
	self editor state: #passive.
	evt hand newKeyboardFocus: self editor.
	self editor replaceCell: aCell.
	
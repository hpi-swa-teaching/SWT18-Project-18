event handling
editCell: aCell event: evt
	
	self editor 
		calculateAndWriteContent;
	 	looseFocus: evt;
		state: #passive;
		waitForDoubleClick: evt;
		gainFocus: evt;
		replaceCell: aCell.
	
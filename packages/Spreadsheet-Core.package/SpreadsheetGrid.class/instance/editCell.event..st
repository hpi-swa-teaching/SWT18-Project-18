event handling
editCell: aCell event: evt
	
	self editor 
		calculateAndWriteContent;
	 	looseFocus: evt;
	 	startWaitForDoubleClick;
		gainFocus: evt;
		replaceCell: aCell.
	
managing files
importSTON
	
	| aFileStream |
	
	aFileStream := FileChooser new initializeAsDialogBox open.
	
	aFileStream ifNotNil: [
		(self grid) 
			swapData: (STON fromStream: aFileStream);
			changed.
		self grid data grid: self grid]
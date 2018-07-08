managing files
importSTON
	
	| aFileStream aFileChooser|
	
	(aFileChooser := FileChooser new initializeAsDialogBox)
		morphicView position: self position.
	aFileStream := aFileChooser open.
	aFileStream 
		ifNotNil: [
			(self grid) 
				swapData: (STON fromStream: aFileStream);
				changed.
			self grid data grid: self grid].
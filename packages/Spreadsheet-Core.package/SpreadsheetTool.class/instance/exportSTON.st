managing files
exportSTON

	| aFileChooser aFileStream dataCopy |
	
	(aFileChooser := SSTFileChooser new initializeAsDialogBox)
		setCaption: 'Select File or Directory' translated.
	aFileChooser morphicView position: self position.
	aFileStream := aFileChooser open.
	
	" Compresses data " 
	
	aFileStream 
		ifNotNil: [
			STON put: self grid data onStreamPretty: aFileStream.
			self notifyOf: 'Saved as STON File' in: Color green]
		ifNil: [
			self notifyOf: 'Not Saved.' in: Color red].
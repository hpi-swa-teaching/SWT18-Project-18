managing files
exportSTON

	| aFileChooser aFileStream|
	
	(aFileChooser := SpreadsheetFileChooser new initializeAsDialogBox)
		setCaption: 'Select File or Directory' translated.
	aFileChooser morphicView position: self position.
	aFileStream := aFileChooser open.
	aFileStream 
		ifNotNil: [
			STON put: self grid data onStreamPretty: aFileStream.
			self notifyOf: 'Saved as STON File' in: Color green]
		ifNil: [
			self notifyOf: 'Not Saved.' in: Color red].
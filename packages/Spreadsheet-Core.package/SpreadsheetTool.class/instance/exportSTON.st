managing files
exportSTON

	| aFileChooser aFileStream |
	
	aFileChooser := SpreadsheetFileChooser new initializeAsDialogBox.
	aFileChooser setCaption: 'Select File or Directory' translated.
	aFileStream := aFileChooser open.
	aFileStream ifNotNil: [STON put: self grid data onStreamPretty: aFileStream].
managing files
exportSTON

	| aFileChooser aPath aDialog aFileStream |
	
	aFileChooser := FileChooser new initializeAsDialogBox.
	aFileChooser setCaption: 'Select File or Directory' translated.
	aFileStream := aFileChooser open.
	aFileStream
		ifNotNil: [
			STON put: self grid data onStreamPretty: aFileStream]
		ifNil: [
			aFileChooser directory ifNotNil: [
				aPath := (aFileChooser directory fullPathFor: '') asReference.
				aDialog := SpreadsheetTextEntryDialog title: 'Enter File Name:'.
				(aDialog openFor: self)
					then: [
						aPath := aPath / aDialog text.
						aPath asReference 
 		   					fileStreamDo: [:stream | 
 		      					STON put: self grid data onStreamPretty: stream]];
					ifRejected: []]].
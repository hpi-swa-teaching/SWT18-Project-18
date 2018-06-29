managing files
newFile

	self grid data: (SpreadsheetData newFor: self grid).
	self grid changed.
	self grid layoutChanged.
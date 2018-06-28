managing files
newFile

	self grid data: (SpreadsheetData for: self grid).
	self grid changed.
	self grid layoutChanged.
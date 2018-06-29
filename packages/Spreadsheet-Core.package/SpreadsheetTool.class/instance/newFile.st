managing files
newFile

	self grid swapData: (SpreadsheetData newFor: self grid).
	self grid changed.
	self grid layoutChanged.
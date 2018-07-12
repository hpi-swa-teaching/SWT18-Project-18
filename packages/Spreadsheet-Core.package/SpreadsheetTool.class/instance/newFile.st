managing files
newFile

	self grid swapData: (SSTGridData newFor: self grid).
	self grid changed.
	self grid layoutChanged.
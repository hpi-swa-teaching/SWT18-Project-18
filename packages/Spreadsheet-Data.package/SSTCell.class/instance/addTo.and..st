initialization
addTo: aColumn and: aRow 
	
	self columnIndex: aColumn index.
	self rowIndex: aRow index.
	aColumn addCell: self atIndex: self rowIndex.
	aRow addCell: self atIndex: self columnIndex.
	self width: aColumn width.
	self height: aRow height.
	self position: (aColumn position x) @ (aRow position y).
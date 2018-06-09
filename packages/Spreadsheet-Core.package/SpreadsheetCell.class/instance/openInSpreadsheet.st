initialization
openInSpreadsheet 

	self column addCell: self atIndex: self row index.
	self row addCell: self atIndex: self column index.
	self width: self column width.
	self height: self row height.
	self position: (self column position x) @ (self row position y).
	self grid add: self.
	
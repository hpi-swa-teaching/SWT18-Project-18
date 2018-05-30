initialization
openInSpreadsheet 

	self column addCell: self.
	self row addCell: self.
	self width: self column width.
	self height: self row height.
	self position: (self column position x) @ (self row position y).
	self grid add: self.
	
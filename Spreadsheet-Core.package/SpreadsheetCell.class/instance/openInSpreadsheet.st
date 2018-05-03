initialization
openInSpreadsheet 

	self column addCell: self.
	self row addCell: self.
	self grid addMorph: self.
	self		
		position: ((self column index * self width + self grid position x + self offset) @ (self row index * self height + self grid position y + self offset)).
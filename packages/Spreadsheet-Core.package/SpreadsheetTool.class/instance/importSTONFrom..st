managing files
importSTONFrom: aPath
	
	(self grid) 
		data: (aPath asReference 
  			fileStreamDo: [:stream | STON fromStream: stream]);
		changed.
	self grid data grid: self grid.
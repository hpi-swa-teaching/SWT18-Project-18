managing files
importSTONFrom: aPath
	
	(self grid) 
		swapData: (aPath asReference 
  			fileStreamDo: [:stream | STON fromStream: stream]);
		changed.
	self grid data grid: self grid.
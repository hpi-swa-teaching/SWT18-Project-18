perform calculations
cellsChanged: aCollection
	
	aCollection do: [ :cell |
		self cellChanged: cell ].
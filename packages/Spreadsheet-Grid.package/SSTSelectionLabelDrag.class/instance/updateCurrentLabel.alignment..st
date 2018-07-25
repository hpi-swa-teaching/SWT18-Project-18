as yet unclassified
updateCurrentLabel: labelDirection alignment: alignment  

	self currentLabel: (self currentLabel perform: labelDirection).
	self currentCell: self currentLabel cells last
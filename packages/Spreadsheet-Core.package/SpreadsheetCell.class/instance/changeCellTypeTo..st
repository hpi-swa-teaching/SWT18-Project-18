visual properties
changeCellTypeTo: aType
	"if text in cell matches regex for given type then the cell type is changed"
	
	"((aType correspondingRegex) matches: self text) ifTrue:  ["
	self cellType: aType.
		"Transcript show: (self text)]."
	
	
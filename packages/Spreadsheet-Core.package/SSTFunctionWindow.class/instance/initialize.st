as yet unclassified
initialize

	super initialize.
	self
		minSize: self minSize;
		text: '';
		addApplicationStyles: ((PHStyle for: #textArea)
			border: self standardBorder color: Color blue)
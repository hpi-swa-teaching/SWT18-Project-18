initialization
initialize 

	super initialize.
	self 
		extent: self buttonExtent;
		addApplicationStyles: ((PHStyle for: #button)
			borderRadius: self buttonBorderRadius)
			
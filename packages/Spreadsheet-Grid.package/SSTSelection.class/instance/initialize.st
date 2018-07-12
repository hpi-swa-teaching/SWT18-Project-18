initialization
initialize 

	super initialize.
	self
		addStyleClass: #selection;
		addApplicationStyles: ((PHStyle for: #selection)
			boxSizing: #contentBox;
			color: Color transparent;
			border: 1 color: Color blue);
		activeCellMorph: (PHWidget new
			addStyleClass: #selection;
			addApplicationStyles: ((PHStyle for: #selection)
				boxSizing: #contentBox;
				color: Color transparent;
				border: 2 color: Color blue)).
	self 
		add: self activeCellMorph;
		addMoveMorphs;
		addCopyMorph.
initialization
initialize
	
	super initialize.
	self
		withLayout;
		color: Color snow;
		textField: (PHTextEntry new
			minSize: 200@20;
			addFallbackStyles: ((PHStyle for: #textEntry)
			boxSizing: #borderBox;
			padding: 10 @ 10;
			color: Color black;
			backgroundColor: Color white;
			border: 1 color: Color blue));
		add: (PHWidget new
			withLayout;
			add: self textField;
			add: ((PHButton label: 'OK')
				when: #clicked send: #returnPath to: self;
				color: Color green)).
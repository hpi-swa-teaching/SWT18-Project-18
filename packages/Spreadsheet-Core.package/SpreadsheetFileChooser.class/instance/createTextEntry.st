ui creation
createTextEntry

	self textEntry: (PHTextEntry new
			minSize: 300@20;
			text: '';
			addFallbackStyles: ((PHStyle for: #textEntry)
				boxSizing: #contentBox;
				padding: 4 @ 2;
				color: Color black;
				backgroundColor: Color transparent;
				border: 1 color: Color black)).
	^ self textEntry
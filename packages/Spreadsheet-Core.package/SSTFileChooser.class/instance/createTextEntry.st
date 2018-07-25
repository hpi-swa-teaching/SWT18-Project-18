ui creation
createTextEntry

	self textEntry: (PHTextEntry new
			minSize: self minSize;
			text: '';
			addFallbackStyles: ((PHStyle for: #textEntry)
				boxSizing: #contentBox;
				padding: self standardPadding;
				color: Color black;
				backgroundColor: Color transparent;
				border: self standardBorder color: Color black)).
	^ self textEntry
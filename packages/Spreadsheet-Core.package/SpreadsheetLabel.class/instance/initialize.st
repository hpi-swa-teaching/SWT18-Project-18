initialization
initialize 

	super initialize.	
	self 
		color: Color gray;
		width: self standardWidth;
		height: self standardHeight;
		alignment:  #center;
		addStyleClass: #labelStyle;
		addApplicationStyles: ((PHStyle for: #labelStyle)
			boxSizing: #content;
			border: 1 color: Color black;
			padding: 4@2)
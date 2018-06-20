initialization
initialize 

	super initialize.	
	self 
		backgroundColor: Color gray;
		width: self standardWidth;
		height: self standardHeight;
		alignment:  #center
		"addStyleClass: #labelStyle;
		addApplicationStyles: 
			((PHStyle for: #labelStyle)
				boxSizing: #borderBox;
				border: 1 color: Color black;
				padding: 4@2;
				yourself)"
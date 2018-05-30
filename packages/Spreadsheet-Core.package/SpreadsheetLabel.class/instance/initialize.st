initialization
initialize 

	super initialize.	
	self 
		color: Color gray;
		width: self standardWidth;
		height: self standardHeight;
		align: #(center start);
		addStyleClass: #labelStyle;
		addApplicationStyles: ((PHStyle for: #labelStyle)
			boxSizing: #borderBox;
			border: 1 color: Color black;
			padding: 4@2)
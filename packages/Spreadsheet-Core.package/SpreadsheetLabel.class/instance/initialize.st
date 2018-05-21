initialization
initialize 

	super initialize.	
	self 
		color: Color gray;
		borderWidth: 1;
		width: self standardWidth;
		height: self standardHeight;
		contentMorph: (StringMorph new
			color: Color black;
			position: 0@4;
			contents: '').
	self addMorph: self contentMorph
initialization
adjustTo: startPoint and: endPoint
	self 
		height: self thickness + (endPoint y - startPoint y);
		width: self thickness + (endPoint x - startPoint x);
		position: startPoint - ((self thickness / 2)@(self thickness /2)).
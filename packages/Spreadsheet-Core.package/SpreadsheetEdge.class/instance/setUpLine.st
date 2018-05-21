accessing
setUpLine
	
	self line setVertices: {self startPoint. self endPoint}.
	self grid addMorph: self line
	"self position: self startPoint - (1@1).
	self width: (self endPoint x - self startPoint x).
	self height: (self endPoint y - self startPoint y).
	self borderColor: Color gray.
	self borderWidth: 1.
	self grid addMorph: self"
initialization
updatePosition: aPoint

	self position: aPoint.
	self leftEdge line setVertices: {self topLeft. self bottomLeft}.
	self rightEdge line setVertices: {self topRight. self bottomRight}.
	self topEdge line setVertices: {self topLeft. self topRight}.
	self bottomEdge line setVertices: {self bottomLeft. self bottomRight}.
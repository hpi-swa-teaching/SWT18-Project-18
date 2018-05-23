initialization
saveDelete 

	{ self leftEdge.
	self rightEdge.
	self topEdge.
	self bottomEdge} do: [ :edge | edge deleteReference: self ].
	self delete
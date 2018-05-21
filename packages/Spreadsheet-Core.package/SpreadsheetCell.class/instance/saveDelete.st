as yet unclassified
saveDelete 

	{ self leftSide.
	self rightSide.
	self topSide.
	self bottomSide} do: [ :edge | edge deleteReference: self ].
	self delete
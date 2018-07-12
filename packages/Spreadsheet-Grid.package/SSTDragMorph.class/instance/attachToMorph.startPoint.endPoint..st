initialization
attachToMorph: aMorph startPoint: startPoint endPoint: endPoint 

	self morph: aMorph.
	self adjustTo: startPoint and: endPoint.
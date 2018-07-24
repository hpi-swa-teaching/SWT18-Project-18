accessing
allocatedCells 

	^ allocatedCells ifNil: [ allocatedCells := OrderedCollection new ]
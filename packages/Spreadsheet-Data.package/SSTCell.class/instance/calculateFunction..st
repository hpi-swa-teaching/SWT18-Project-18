accessing
calculateFunction: anObject

	self calcRepresentation: anObject.
	self data ifNotNil: [ self data calcRepresentationChanged: self ].
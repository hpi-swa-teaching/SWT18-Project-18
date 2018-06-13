editing
writeContent

	self cell ifNotNil: [
		self cell text: self text.
		self cell calcRepresentation: self calcRepresentation.].
	self active: false.
	self delete
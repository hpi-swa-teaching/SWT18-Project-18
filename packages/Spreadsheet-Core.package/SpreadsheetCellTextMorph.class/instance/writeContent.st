editing
writeContent

	self cell ifNotNil: [
		self cell contents: self text.
		self calcRepresentation 
			ifNil: [
				self cell calcRepresentation: self text.]
			ifNotNil: [ 
				self cell calcRepresentation: self calcRepresentation.]].
	self active: false.
	self cell: nil.
	self delete
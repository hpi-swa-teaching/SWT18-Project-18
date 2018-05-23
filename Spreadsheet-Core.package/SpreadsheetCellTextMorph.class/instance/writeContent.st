editing
writeContent

	self cell ifNotNil: [
		self cell contents: self contents.
		self calcRepresentation 
			ifNil: [
				self cell calcRepresentation: self contents.]
			ifNotNil: [ 
				self cell calcRepresentation: self calcRepresentation.]].
	self active: false.
	self cell: nil.
	self delete
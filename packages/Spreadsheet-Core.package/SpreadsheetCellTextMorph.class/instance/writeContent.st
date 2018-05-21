editing
writeContent

	self cell ifNotNil: [
		self cell contents: self contents].
	self active: false.
	self cell: nil.
	self delete
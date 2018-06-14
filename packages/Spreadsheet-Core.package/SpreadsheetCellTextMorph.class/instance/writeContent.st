editing
writeContent

	self cell ifNotNil: [
		self cell text: self text].
	self active: false.
	self delete
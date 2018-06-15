editing
writeContent

	self cell ifNotNil: [
		self cell text: self text.
		self notifyDependents: self cell].
editing
calculateAndWriteContent

	self state = #active ifTrue: [
		self calculateContent].
	self writeContent.
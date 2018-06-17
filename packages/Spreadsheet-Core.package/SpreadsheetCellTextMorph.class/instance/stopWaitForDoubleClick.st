event handling
stopWaitForDoubleClick

	self state = #doubleClick ifTrue: [
		self state: #passive.].
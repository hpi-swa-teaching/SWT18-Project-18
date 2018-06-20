event handling
resetDoubleClick: evt

	(self state = #doubleClick) 
		ifTrue: [
			self state: #passive]
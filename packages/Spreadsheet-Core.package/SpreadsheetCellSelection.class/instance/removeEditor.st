editor
removeEditor 

	self editor ifNotNilDo: [ :editor |
		editor calculateAndWriteContent.
		editor delete.
		self editor: nil ]
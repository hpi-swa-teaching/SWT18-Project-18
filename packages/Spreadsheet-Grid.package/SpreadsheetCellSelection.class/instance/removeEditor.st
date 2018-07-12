editor
removeEditor 

	self editor ifNotNilDo: [ :editor |
		self selectedCell calculateFunction: editor text. 
		editor delete.
		self editor: nil ]
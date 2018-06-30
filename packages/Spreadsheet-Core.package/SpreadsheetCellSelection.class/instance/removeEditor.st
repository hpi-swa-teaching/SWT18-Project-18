editor
removeEditor 

	self editor ifNotNilDo: [ :editor |
		self interpreter calculateContent: self selectedCell text: editor text. 
		editor delete.
		self editor: nil ]
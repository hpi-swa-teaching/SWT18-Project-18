as yet unclassified
finishWith: evt

	self selection newSelection: self startCell to: self currentCell.
	self selection cells do: [ :cell | 
		cell calculateFunction: self selection selectedCell calcRepresentation].
	self selection startSelection.
	self selection currentStrategie: nil.
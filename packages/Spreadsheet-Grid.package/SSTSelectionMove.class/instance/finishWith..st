as yet unclassified
finishWith: evt
	
	| cellTemp cellCollection newContents | 
	
	
	cellTemp := self cellFrom: self grabbedCell with: self cellOffset.
	cellTemp ifNil: [^self].
	cellCollection := (cellTemp to: (self cellFrom: cellTemp with: ((self selection cells cellWidth - 1) @ (self selection cells cellHeight - 1)))).
	newContents := (self selection cells collect: #calcRepresentation).
	self selection grid removeMorph: self targetMorph.
	self targetMorph: nil.
	(cellTemp ~= self selection selectedCell) 
		ifTrue: [ 
			self selection cells clearContent.
			cellCollection withIndexDo: [ :aCell :index | 
				aCell calculateFunction: (newContents at: index)].
			self selection selectedCell reset ].
	self selection editor ifNotNilDo: [ :editor | editor reset].
	self selection fullMoveTo: cellTemp.
	self selection newSelection: cellCollection first to: cellCollection last.
	self selection startSelection.
	self selection currentStrategie: nil.
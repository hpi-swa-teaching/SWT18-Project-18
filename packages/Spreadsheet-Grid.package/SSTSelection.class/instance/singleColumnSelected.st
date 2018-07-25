helper
singleColumnSelected

	| aColumn |
	
	self cells cellWidth = 1 ifFalse: [^ false].
	aColumn := self cells first column.
	aColumn cells do: [:aCell |
		(self cells includes: aCell) ifFalse: [^ false]].
	^ true
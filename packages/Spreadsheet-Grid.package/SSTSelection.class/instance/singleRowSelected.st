helper
singleRowSelected

	| aRow |
	
	self cells cellHeight = 1 ifFalse: [^ false].
	aRow := self cells first row.
	aRow cells do: [:aCell |
		(self cells includes: aCell) ifFalse: [^ false]].
	^ true
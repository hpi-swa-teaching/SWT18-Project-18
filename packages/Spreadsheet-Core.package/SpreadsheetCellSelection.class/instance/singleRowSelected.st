helper
singleRowSelected

	| aRow |
	
	self cells ifEmpty: [^ false].
	aRow := self cells asOrderedCollection first row.
	aRow cells do: [:aCell |
		(self cells includes: aCell) ifFalse: [^ false]].
	^ true
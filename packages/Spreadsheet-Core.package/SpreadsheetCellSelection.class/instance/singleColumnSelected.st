accessing
singleColumnSelected

	| aColumn |
	
	self cells ifEmpty: [^ false].
	aColumn := self cells asOrderedCollection first column.
	aColumn cells do: [:aCell |
		(self cells includes: aCell) ifFalse: [^ false]].
	^ true
accessing
singleRowSelected

	(self cells size <= 1) ifTrue: [^ false].
	(self startLabel isKindOf: SpreadsheetLabel) ifFalse: [^ false].
	self cells do: [ :aCell | 
		(aCell row index = self cells asOrderedCollection first row index) ifFalse: [^ false]].
	^ true
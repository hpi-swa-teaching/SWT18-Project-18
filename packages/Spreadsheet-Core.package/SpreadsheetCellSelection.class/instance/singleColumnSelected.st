accessing
singleColumnSelected
	
	(self cells size <= 1) ifTrue: [^ false].
	(self startCell isKindOf: SpreadsheetLabel) ifFalse: [^ false].
	self cells do: [ :aCell | 
			(aCell column index = self cells asOrderedCollection first column index) ifFalse: [^ false] ].
	^ true
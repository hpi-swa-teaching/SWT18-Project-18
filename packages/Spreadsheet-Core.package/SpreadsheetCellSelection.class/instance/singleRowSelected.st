accessing
singleRowSelected

	 self cells 
		ifEmpty: [ ^ false ];
		do: [ :aCell | 
		(aCell row index = self cells asOrderedCollection first row index) ifFalse: [^ false]].
	^ true
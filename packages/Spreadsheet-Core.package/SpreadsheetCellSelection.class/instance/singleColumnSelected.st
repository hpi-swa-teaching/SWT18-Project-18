accessing
singleColumnSelected
	
	 self cells 
		ifEmpty: [ ^ false ];
		do: [ :aCell | 
			(aCell column index = self cells asOrderedCollection first column index) ifFalse: [^ false] ].
	^ true
initialization
moveTo: aCell
	
	(self cells size <= 1 ) 
		ifTrue: [ self fullMoveTo: aCell ]
		ifFalse: [ self moveInBounds: aCell ].
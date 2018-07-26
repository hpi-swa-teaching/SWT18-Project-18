as yet unclassified
updatePosition: aPosition

	(self selection grid innerGridBounds containsPoint: aPosition) ifFalse: [ ^ self ].
		self
			findNewPositionX: aPosition;
	 		findNewPositionY: aPosition;
			adjustCurrentCell.
		self selection
			adjustSize: self selectionBounds; 
			updateDependentMorphs
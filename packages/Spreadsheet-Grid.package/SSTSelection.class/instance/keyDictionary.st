event handling
keyDictionary
	
	^ keyDictionary ifNil: [keyDictionary := (Dictionary new
		at: '<left>' put: [ :evt | self fullMoveTo: self selectedCell horizontalPredecessor ];
		at: '<right>' put: [ :evt | self fullMoveTo: self selectedCell horizontalSuccessor];
		at: '<up>' put: [ :evt | self fullMoveTo: self selectedCell verticalPredecessor ];
		at: '<down>' put: [ :evt | self fullMoveTo: self selectedCell verticalSuccessor];
		at: '<cr>' put: [ :evt | self editText: evt ];
		at: '<tab>' put: [  :evt | self moveToDirectionInBounds: #right];
		at: '<Shift-cr>' put: [ :evt | self moveToDirectionInBounds: #top ];
		at: '<Shift-tab>' put: [ :evt | self moveToDirectionInBounds: #left];
		at: '<delete>' put: [ :evt | self cells clearContent];
		yourself)]
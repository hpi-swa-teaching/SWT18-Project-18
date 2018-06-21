event handling
keyDictionary
	
	^ keyDictionary := (Dictionary new
		at: '<left>' put: [ :evt | self fullMoveTo: self startCell leftCell ];
		at: '<right>' put: [ :evt | self fullMoveTo: self startCell rightCell];
		at: '<up>' put: [ :evt | self fullMoveTo: self startCell topCell ];
		at: '<down>' put: [ :evt | self fullMoveTo: self startCell bottomCell];
		at: '<cr>' put: [ :evt | self editText: evt ];
		at: '<tab>' put: [  :evt | self moveToDirectionInBounds: #right];
		at: '<shift-cr>' put: [ :evt |self fullMoveTo: self startCell leftCell ];
		at: '<shift-tab>' put: [ :evt | self moveToDirectionInBounds: #left];
		yourself).
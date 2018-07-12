event handling
selectionKeyStroke: evt
	
	| key action |
	key := evt keyString.
	action := self keyDictionary at: key ifAbsent: [[ :event | self newText: evt]]. 
	action value: evt.
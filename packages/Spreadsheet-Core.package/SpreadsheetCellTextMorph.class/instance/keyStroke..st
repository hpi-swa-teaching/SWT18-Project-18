event handling
keyStroke: evt
	
	self state = #active ifTrue: [
		super keyStroke: evt.
		evt keyValue = 13 
			ifFalse: [
				self update
			]
			ifTrue: [
				self crAction: evt
			].
		^ self].
	self state = #passive ifTrue: [
		evt keyString = '<left>' ifTrue: [
			^ self moveTo: #leftCell].
		evt keyString = '<right>' ifTrue: [
			^ self moveTo: #rightCell ].
		evt keyString = '<down>' ifTrue: [
			^ self moveTo: #bottomCell].
		evt keyString = '<up>' ifTrue: [
			^ self moveTo: #topCell].
		evt keyString = '<cr>' ifTrue: [
			^ self newText: evt].
		evt keyString = '<tab>' ifTrue: [
			^ self moveTo: #rightCell ].
		self newText: evt.
		self keyStroke: evt.
		^ self]
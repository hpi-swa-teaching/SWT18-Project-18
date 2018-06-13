layout
gridSize

	| corner |
	(self columns size = 0) 
		ifTrue: [
			corner := self markAllLabel bottomRight
		]
		ifFalse: [
			corner := self columns last cells last bottomRight].
		
	^Rectangle 
		origin: self markAllLabel position
		corner: corner
		
layout
gridSize

	| corner column |
	(self columns size = 0) 
		ifTrue: [
			corner := self markAllLabel bottomRight
		]
		ifFalse: [
			column := self columns last.
			(column cells size = 0)
				ifTrue: [
					corner := column bottomRight]
				ifFalse: [
					corner := column cells last bottomRight]].
	^Rectangle 
		origin: self markAllLabel position
		corner: corner
		
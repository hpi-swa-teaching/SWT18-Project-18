layout
gridSize

	| corner column |
	(self columns size = 0) 
		ifTrue: [
			corner := self bottomRight
		]
		ifFalse: [
			column := self columns last.
			(column cells size = 0)
				ifTrue: [
					corner := column bottomRight]
				ifFalse: [
					corner := column cells last bottomRight]].
	^Rectangle 
		origin: self position
		corner: corner
		
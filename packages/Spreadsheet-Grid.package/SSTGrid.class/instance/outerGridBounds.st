layout
outerGridBounds

	| corner column |
	(self data columns isEmpty) 
		ifTrue: [
			corner := self bottomRight
		]
		ifFalse: [
			column := self data columns last.
			(column cells isEmpty)
				ifTrue: [
					corner := column bottomRight]
				ifFalse: [
					corner := column cells last bottomRight]].
	^Rectangle 
		origin: self position
		corner: corner
		
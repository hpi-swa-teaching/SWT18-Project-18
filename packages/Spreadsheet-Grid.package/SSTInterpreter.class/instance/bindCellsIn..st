binding
bindCellsIn: aParseTree

	aParseTree isMessage ifTrue: [
		].
	aParseTree getChildren do: [ :childTree |
		self bindCellsIn: childTree ].
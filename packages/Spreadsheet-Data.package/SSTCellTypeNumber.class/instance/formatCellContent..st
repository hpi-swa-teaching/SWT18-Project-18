as yet unclassified
formatCellContent: aText
	
	| adjustedLength textCollection predecimal decimal tokens |
	tokens := aText findTokens: '\.'.
	predecimal := tokens first.
	(tokens size > 1) 
		ifTrue: [ decimal := '.', tokens last]
		ifFalse: [ decimal := ''].
	textCollection := predecimal asOrderedCollection.
	adjustedLength := (predecimal size) - 3.
	
	adjustedLength to: 1 by: -3 do: [ :index | textCollection add: (',' asCharacter) afterIndex: index].
	textCollection := textCollection, decimal.
	
	^ String newFrom: textCollection 
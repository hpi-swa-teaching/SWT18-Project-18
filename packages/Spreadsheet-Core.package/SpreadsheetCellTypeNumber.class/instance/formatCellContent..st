as yet unclassified
formatCellContent: aText
	
	| adjustedLength textCollection |
	textCollection := aText asOrderedCollection.
	adjustedLength := (aText size) - 3.
	
	adjustedLength to: 1 by: -3 do: [ :index |
		textCollection add: (',' asCharacter) afterIndex: index].
	
	^ String newFrom: textCollection 
	
	
	
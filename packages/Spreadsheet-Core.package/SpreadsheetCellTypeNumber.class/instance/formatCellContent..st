as yet unclassified
formatCellContent: aText
	
	| adjustedLength textCollection vorkommastellen nachkommastellen tokens |
	tokens := aText findTokens: '\.'.
	vorkommastellen := tokens first.
	(tokens size > 1) ifTrue: [
		nachkommastellen := tokens last].
	textCollection := vorkommastellen asOrderedCollection.
	adjustedLength := (vorkommastellen size) - 3.
	
	adjustedLength to: 1 by: -3 do: [ :index |
		textCollection add: (',' asCharacter) afterIndex: index].
	
	(tokens size > 1) ifTrue: [
		textCollection := textCollection, '.', nachkommastellen].
	
	^ String newFrom: textCollection 
	
	
	
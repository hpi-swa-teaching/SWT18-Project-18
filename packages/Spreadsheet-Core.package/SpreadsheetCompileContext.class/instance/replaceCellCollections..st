accessing
replaceCellCollections: aString
	
	| expression |
	
	expression := self replaceCellCollectionAccessors: aString.
	expression := self replaceCellContentCollections: expression.
	^ expression
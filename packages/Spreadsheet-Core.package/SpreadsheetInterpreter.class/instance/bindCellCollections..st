binding
bindCellCollections: aString
	
	| expression |
	
	expression := self bindCellCollectionAccessors: aString.
	expression := self bindCellContentCollections: expression.
	^ expression
binding
bindVariablesIn: aString

	self bindGridAccessor: aString.
	self bindCellAccessors: aString.
	self bindMorphAccessor: aString.
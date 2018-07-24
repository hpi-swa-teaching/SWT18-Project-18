binding
bindVariablesIn: aMethod

	self bindCellAccessors: aMethod.
	self bindGridAccessor: aMethod.
	self bindMorphAccessor: aMethod.
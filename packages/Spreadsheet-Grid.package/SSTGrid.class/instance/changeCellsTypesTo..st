public
changeCellsTypesTo: aTypeSymbol
	"change all cell types in the current selection"
	| type |
	
	type := (self flyweightFactory getFlyweightFor: aTypeSymbol).
	self selection cells do: [ :aCell |
		
		aCell changeCellTypeTo: type.
		aCell text: (SSTInterpreter calculateContent: aCell on: self).
	].
	self changed.
accessing
changeCellsTypesTo: aTypeSymbol
	"change all cell types in the current selection"
	
	self interpreter changeCellTypeTo: (self flyweightFactory getFlyweightFor: aTypeSymbol) cells: self selection cells.
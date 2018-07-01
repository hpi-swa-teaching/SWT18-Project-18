accessing
changeCellsTypesTo: aTypeSymbol
	"change all cell types in the current selection"
	
	self interpreter changeCellTypeTo: (self flyweightFactory flyweightList at: aTypeSymbol) cells: self selection cells.
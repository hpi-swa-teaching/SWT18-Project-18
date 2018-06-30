accessing
changeCellsTypesTo: aTypeSymbol
	"change all cell types in the current selection"
	
	self selection changeCellTypeTo: (self flyweightFactory flyweightList at: aTypeSymbol)
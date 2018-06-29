accessing
changeCellsTypesTo: aTypeSymbol
	"change all cell types in the current selection"
	
	"Transcript show: (self flyweightFactory flyweightList at: aTypeSymbol)."
	(self selection cells) do: [:cell |
		cell changeCellTypeTo: (self flyweightFactory flyweightList at: aTypeSymbol)]
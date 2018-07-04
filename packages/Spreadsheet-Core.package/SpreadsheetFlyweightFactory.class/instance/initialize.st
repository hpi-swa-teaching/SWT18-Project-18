initialization
initialize
	"Initializes the flyweightFactory using all subclasses of SpreadsheetCellTypeAbstract"
	
	| flyweightList flyweightObject |
	super initialize.
	flyweightList := Dictionary new.
	SpreadsheetCellTypeAbstract allSubclasses do: [:flyweight | 
		flyweightObject := flyweight new.
		flyweightList at: flyweightObject correspondingSymbol put: flyweightObject].
	self flyweightList: flyweightList.
	
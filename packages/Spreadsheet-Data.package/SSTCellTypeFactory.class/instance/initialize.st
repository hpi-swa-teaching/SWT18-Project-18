initialization
initialize
	"Initializes the flyweightFactory using all subclasses of SpreadsheetCellTypeAbstract"
	
	| flyweightListTemp flyweightObject |
	super initialize.
	flyweightListTemp := Dictionary new.
	SSTCellTypeAbstract allSubclasses do: [:flyweightClass | 
		flyweightObject := flyweightClass new.
		flyweightListTemp at: flyweightObject correspondingSymbol put: flyweightObject].
	self flyweightList: flyweightListTemp.
	
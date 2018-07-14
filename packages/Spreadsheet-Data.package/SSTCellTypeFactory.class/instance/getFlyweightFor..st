accessing
getFlyweightFor: aSymbol
	"returns a flyweight from the flyweightlist for a given symbol"

	^ self flyweightList at: aSymbol
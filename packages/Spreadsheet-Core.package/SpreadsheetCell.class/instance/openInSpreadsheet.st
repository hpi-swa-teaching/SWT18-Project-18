initialization
openInSpreadsheet 

	self column addCell: self.
	self row addCell: self.
	self setPosition.
	"self position: ((self column index)* self width + self grid position x + self offset) @ ((self row index)* self height + self grid position y + self offset)."
	self width: ((self topCell) ifNil: [self standardWidth] ifNotNil: [self topCell width]).
	self height: ((self leftCell) ifNil: [self standardHeight] ifNotNil: [self leftCell height]).
	self position: (self column position x) @ (self row position y).
	self grid addMorph: self.
	
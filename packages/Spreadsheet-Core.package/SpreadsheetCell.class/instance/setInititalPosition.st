initialization
setInititalPosition

	| x y |
	
	x := (self leftCell) ifNil: [ self grid position x + self offset] ifNotNil: [  (self leftCell position x + self leftCell width)].
	y := (self topCell) ifNil: [ self grid position y + self offset] ifNotNil: [ (self topCell position y + self topCell height)].
	self position: x@y.
	
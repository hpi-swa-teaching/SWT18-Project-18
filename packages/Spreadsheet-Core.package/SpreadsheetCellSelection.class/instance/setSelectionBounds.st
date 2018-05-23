as yet unclassified
setSelectionBounds 
	| left right top bottom|
	left := (self currentCell position x < self startCell position x) ifTrue: [ self currentCell position x] ifFalse: [self startCell position x].
	right := ((self currentCell position x > self startCell position x) ifTrue: [ self currentCell position x] ifFalse: [self startCell position x]) + 1.
	top := (self currentCell position y < self startCell position y) ifTrue: [ self currentCell position y] ifFalse: [self startCell position y].
	bottom := ((self currentCell position y > self startCell position y) ifTrue: [ self currentCell position y] ifFalse: [self startCell position y]) + 1.
	self selectionBounds: (Rectangle origin: left@top corner: right@bottom).
layout
updateSelection: aPositionCollection by: aPoint

	| startCell currentCell selectedCell |
	
	startCell := self cellAtIndex: aPositionCollection first.
	currentCell := self cellAtIndex: aPositionCollection second.
	selectedCell := self cellAtIndex: aPositionCollection third.
	startCell ifNil: [ startCell := (self cellAtIndex: aPositionCollection first + aPoint)].
	currentCell ifNil: [ currentCell := (self cellAtIndex: aPositionCollection second + aPoint)].
	selectedCell ifNil: [ selectedCell := (self cellAtIndex: aPositionCollection third + aPoint)]. 
	self selection selectFrom: startCell  to: currentCell.
	self selection moveInBounds: selectedCell.
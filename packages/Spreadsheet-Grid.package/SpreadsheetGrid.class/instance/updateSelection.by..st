layout
updateSelection: aPositionCollection by: aPoint

	| startCell currentCell selectedCell |
	
	startCell := self data cellAtIndex: aPositionCollection first.
	currentCell := self data cellAtIndex: aPositionCollection second.
	selectedCell := self data cellAtIndex: aPositionCollection third.
	startCell ifNil: [ startCell := (self data cellAtIndex: aPositionCollection first + aPoint)].
	currentCell ifNil: [ currentCell := (self data cellAtIndex: aPositionCollection second + aPoint)].
	selectedCell ifNil: [ selectedCell := (self data cellAtIndex: aPositionCollection third + aPoint)]. 
	self selection selectFrom: startCell  to: currentCell.
	self selection moveInBounds: selectedCell.
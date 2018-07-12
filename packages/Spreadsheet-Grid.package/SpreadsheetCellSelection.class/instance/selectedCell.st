accessing
selectedCell
	^ selectedCell ifNil: [ selectedCell := self startCell ]
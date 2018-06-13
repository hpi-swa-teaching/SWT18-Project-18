as yet unclassified
testColumnGripDrag
	| position width newPosition gripPosition newGripPosition positionRightLabel|
	position :=  columnGrip targetLabel position.
	width := columnGrip targetLabel width.
	gripPosition := columnGrip position.
	positionRightLabel := columnGrip targetLabel rightLabel position.
	self mousePress: columnGrip buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((gripPosition x + 20) @ gripPosition y) buttons: #(left) start: 0@0 morph: columnGrip.
	newGripPosition := columnGrip position.
	self assert: newGripPosition = ((gripPosition x + 20) @ gripPosition y).
	self simulateMouseEvent: #mouseUp at: ((gripPosition x + 20) @ gripPosition y) buttons: #(left) start: 0@0 morph: columnGrip.
	newPosition := columnGrip targetLabel position.
	self assert:  newPosition = position.
	self assert: columnGrip targetLabel rightLabel position x = (positionRightLabel x + 20).
	self assert: columnGrip targetLabel width = (width + 20).

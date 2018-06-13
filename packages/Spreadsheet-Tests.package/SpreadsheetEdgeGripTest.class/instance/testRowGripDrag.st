as yet unclassified
testRowGripDrag
	| position height newPosition gripPosition newGripPosition positionBottomLabel newPositionBottomLabel|
	position :=  rowGrip targetLabel position.
	height := rowGrip targetLabel height.
	gripPosition := rowGrip position.
	positionBottomLabel := rowGrip targetLabel bottomLabel position.
	self mousePress: rowGrip buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((gripPosition x) @ (gripPosition y + 20) ) buttons: #(left) start: 0@0 morph: rowGrip.
	newGripPosition := rowGrip position.
	self assert: newGripPosition = ((gripPosition x) @ (gripPosition y + 20)).
	self simulateMouseEvent: #mouseUp at: ((gripPosition x) @ (gripPosition y + 20)) buttons: #(left) start: 0@0 morph: rowGrip.
	newPosition := rowGrip targetLabel position.
	self assert:  newPosition = position.
	newPositionBottomLabel := rowGrip targetLabel bottomLabel position.
	self assert: newPositionBottomLabel y = (positionBottomLabel y + 20).
	self assert: rowGrip targetLabel height = (height + 20).

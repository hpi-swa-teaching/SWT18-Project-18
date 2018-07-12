as yet unclassified
testRowGripDrag
	| position height newPosition gripPosition newGripPosition positionBottomLabel newPositionBottomLabel|
	position :=  rowGrip label position.
	height := rowGrip label height.
	gripPosition := rowGrip position.
	positionBottomLabel := rowGrip label bottomLabel position.
	self mousePress: rowGrip buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((gripPosition x) @ (gripPosition y + 20) ) buttons: #(left) start: 0@0 morph: rowGrip.
	newGripPosition := rowGrip position.
	self assert: newGripPosition = ((gripPosition x) @ (gripPosition y + 20)).
	self simulateMouseEvent: #mouseUp at: ((gripPosition x) @ (gripPosition y + 20)) buttons: #(left) start: 0@0 morph: rowGrip.
	newPosition := rowGrip label position.
	self assert:  newPosition = position.
	newPositionBottomLabel := rowGrip label bottomLabel position.
	self assert: newPositionBottomLabel y = (positionBottomLabel y + 20).
	self assert: rowGrip label height = (height + 20).

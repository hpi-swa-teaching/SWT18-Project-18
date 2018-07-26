selection moving
moveToDirectionInBounds: aDirection
	| target |
	
	"Find the next Cell in a given Direction IN the selection. Please refactor if you can think of a better way."
	self assert: ({#left. #right. #top. #bottom} includes: aDirection).
	(self cells size <= 1) ifTrue: [self moveToDirection: aDirection. ^ self ].
	(aDirection = #left) ifTrue: [
		(self selectedCell = self cells first) 
		ifTrue: [
			target := self cells last]
		ifFalse: [
			target := self getCellFor: self selectedCell gridPosition - (1@0)]].
	(aDirection = #right) ifTrue: [
		(self selectedCell = self cells last) 
		ifTrue: [
			target := self cells first]
		ifFalse: [
			target := self getCellFor: self selectedCell gridPosition + (1@0)]].
	(aDirection = #bottom) ifTrue: [
		(self selectedCell = self cells last) 
		ifTrue: [
			target := self cells first]
		ifFalse: [
			target := self getCellFor: self selectedCell gridPosition + (0@1)]].
	(aDirection = #top) ifTrue: [
		(self selectedCell = self cells first) 
		ifTrue: [
			target := self cells last]
		ifFalse: [
			target := self getCellFor: self selectedCell gridPosition - (0@1)]].
	
	self moveTo: target.
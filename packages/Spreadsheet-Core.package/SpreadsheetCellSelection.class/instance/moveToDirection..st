selection moving
moveToDirection: aDirection
	
	"Find the next Cell in a given Direction IN the selection. Please refactor if you can think of a better way."
	(aDirection = #left) ifTrue: [
		self fullMoveTo: self selectedCell horizontalPredecessor].
	(aDirection = #right) ifTrue: [
		self fullMoveTo: self selectedCell horizontalSuccessor].
	(aDirection = #bottom) ifTrue: [
		self fullMoveTo: self selectedCell verticalPredecessor].
	(aDirection = #top) ifTrue: [
		self fullMoveTo: self selectedCell verticalSuccessor].
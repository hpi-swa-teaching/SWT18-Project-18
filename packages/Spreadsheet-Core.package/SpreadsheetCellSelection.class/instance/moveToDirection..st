as yet unclassified
moveToDirection: aDirection
	
	"Find the next Cell in a given Direction IN the selection. Please refactor if you can think of a better way."
	(aDirection = #left) ifTrue: [
		self fullMoveTo: self selectedCell leftCell].
	(aDirection = #right) ifTrue: [
		self fullMoveTo: self selectedCell rightCell].
	(aDirection = #bottom) ifTrue: [
		self fullMoveTo: self selectedCell bottomCell].
	(aDirection = #top) ifTrue: [
		self fullMoveTo: self selectedCell topCell].
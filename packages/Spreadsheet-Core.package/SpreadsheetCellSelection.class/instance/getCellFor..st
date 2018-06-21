accessing - extension
getCellFor: aPosition

	(aPosition y < self topLeftIndex y) ifTrue: [
		^self grid cellAtRowIndex: self bottomRightIndex y colIndex: aPosition x - 1].
	(aPosition y > self bottomRightIndex y) ifTrue: [
		^self grid cellAtRowIndex: self topLeftIndex y colIndex: aPosition x + 1].
	(aPosition x < self topLeftIndex x) ifTrue: [
		^self grid cellAtRowIndex: aPosition y - 1 colIndex: self bottomRightIndex x].
	(aPosition x > self bottomRightIndex x) ifTrue: [
		^self grid cellAtRowIndex: self topLeftIndex y + 1 colIndex: self topLeftIndex  x].
	^ self grid cellAtRowIndex: aPosition y colIndex: aPosition x
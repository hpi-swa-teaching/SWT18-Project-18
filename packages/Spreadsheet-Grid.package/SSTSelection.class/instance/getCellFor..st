selection moving
getCellFor: anIndex

	(anIndex y < self topLeftCell rowIndex) ifTrue: [
		^self grid cellAtIndex: (anIndex x - 1) @ self bottomRightCell rowIndex].
	(anIndex y > self bottomRightCell rowIndex) ifTrue: [
		^self grid cellAtIndex: (anIndex x + 1) @ self topLeftCell rowIndex ].
	(anIndex x < self topLeftCell columnIndex) ifTrue: [
		^self grid cellAtIndex: self bottomRightCell columnIndex @ (anIndex y - 1)].
	(anIndex x > self bottomRightCell columnIndex) ifTrue: [
		^self grid cellAtIndex: self topLeftCell columnIndex @ (anIndex y + 1)].
	^ self grid cellAtIndex: anIndex
as yet unclassified
testMarkCellAsSelected

	self assert: cell color = cell colorUnselected.
	self assert: cell selected = false.
	cell markAsSelected.
	self assert: cell selected = true.
	self assert: cell color = cell colorSelected.
	cell colorUnselected: Color black.
	cell unmarkAsSelected.
	self assert: cell selected = false.
	self assert: cell color = Color black. 
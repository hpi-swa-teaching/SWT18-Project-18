as yet unclassified
testReplaceCell
	
	editor replaceCell: gridCell.
	self assert: editor cell = gridCell.
	self assert: editor text = gridCell text.
	self assert: editor position = gridCell position.
	self assert: editor width = gridCell width.
	self assert: editor height = gridCell height.
	
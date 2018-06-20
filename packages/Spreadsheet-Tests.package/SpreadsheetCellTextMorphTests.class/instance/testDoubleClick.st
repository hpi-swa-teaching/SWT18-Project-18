as yet unclassified
testDoubleClick

	gridCell calcRepresentation: '= 3+3'.
	gridCell text: '6'.
	editor replaceCell: gridCell.
	editor state: #doubleClick.
	self assert: editor text = '6'.
	self click: editor.
	self assert: editor text = '= 3+3'
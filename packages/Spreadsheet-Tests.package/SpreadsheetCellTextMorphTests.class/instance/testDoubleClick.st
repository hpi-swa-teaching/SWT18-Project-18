as yet unclassified
testDoubleClick

	"gridCell calcRepresentation: '= 3+3'.
	gridCell text: '6'.
	editor replaceCell: gridCell.
	editor state: #passive.
	self assert: editor text = '6'.
	self simulateMouseEvent: #doubleClick at: editor center buttons: #(left) start: 0@0 morph: editor.
	self assert: editor text = '= 3+3'"
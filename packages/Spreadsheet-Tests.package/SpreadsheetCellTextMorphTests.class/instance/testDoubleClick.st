as yet unclassified
testDoubleClick
	
	selection removeEditor.
	gridCell calcRepresentation: '= 3+3'.
	gridCell text: '6'.
	self mouseDown: grid at: gridCell center. 
	self assert: selection selectedCell text = '6'.
	self mouseDown: grid at: gridCell center.
	editor := selection editor.
	self assert: editor text = '= 3+3'
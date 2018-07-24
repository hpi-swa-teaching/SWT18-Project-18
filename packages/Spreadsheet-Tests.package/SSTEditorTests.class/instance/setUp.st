as yet unclassified
setUp
	
	super setUp.
	
	textMorph := SSTEditor new.
	functionWindow := tool functionWindow.
	grid := tool grid. 
	selection := grid selection.
	
	gridCell := grid cellAtRowIndex: 3 colIndex: 3.
	gridCell 
		text: '6';
		calcRepresentation: '=3+3';
		width: 120;
		height: 10;
		color: Color red.
		
	selection fullMoveTo: gridCell.
	selection addEditor editor.
	editor := selection editor.
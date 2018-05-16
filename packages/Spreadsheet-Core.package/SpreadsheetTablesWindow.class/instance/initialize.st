initialization
initialize
	
	super initialize.
	self grid: (SpreadsheetGrid new position: 10@50).
	self 
		addMorph: (SimpleButtonMorph new label: 'Add Row';  actionSelector: #addRow; target: self grid; position: 20@10);
		addMorph: (SimpleButtonMorph new label: 'Add Column'; actionSelector: #addColumn; target: self grid; position: 80@10);
		addMorph: self grid.
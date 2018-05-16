initialization
initialize
	
	super initialize.
	self functionWindow: SpreadsheetFunctionWindow new;
		addMorph: self functionWindow;
		grid: (SpreadsheetGrid newWith: functionWindow);
		addMorph: self grid.
	self 
		addMorph: (SimpleButtonMorph new label: 'Add Row';  actionSelector: #addRow; target: self grid; position: 20@10);
		addMorph: (SimpleButtonMorph new label: 'Add Column'; actionSelector: #addColumn; target: self grid; position: 100@10);
		addMorph: (SimpleButtonMorph new label: 'Remove Row';  actionSelector: #removeRow; target: self grid; position: 200@10);
		addMorph: (SimpleButtonMorph new label: 'Remove Column'; actionSelector: #removeColumn; target: self grid; position: 300@10);

initialization
initialize
	
	super initialize.
	self grid: (SpreadsheetGrid new position: 10@50).
	self 
		addMorph: (SimpleButtonMorph new label: 'Add Row';  actionSelector: #addRow; target: self grid; position: 20@10);
		addMorph: (SimpleButtonMorph new label: 'Add Column'; actionSelector: #addColumn; target: self grid; position: 100@10);
		addMorph: (SimpleButtonMorph new label: 'Remove Row';  actionSelector: #removeRow; target: self grid; position: 200@10);
		addMorph: (SimpleButtonMorph new label: 'Remove Column'; actionSelector: #removeColumn; target: self grid; position: 300@10);
		addMorph: (SimpleButtonMorph new label: 'Change Column'; actionSelector: #changeWidth; target: self grid; position: 450@10);		
		addMorph: self grid.
initialization
initialize
	
	super initialize.
	self 
		functionWindow: SpreadsheetFunctionWindow new;
		grid: (SpreadsheetGrid newWith: functionWindow);
		vertical: true;
		withLayout;
		add: (PHPage row
			add: ((PHButton label: 'Menü')
				attach: (PHDropdown new
					add: ((PHDropdownItem label: 'Add Row')
						when: #clicked send: #addRow to: self grid);
					add: ((PHDropdownItem label: 'Remove Row')
						when: #clicked send: #removeRow to: self grid);
					add: ((PHDropdownItem label: 'Add Column')
						when: #clicked send: #addColumn to: self grid);
					add: ((PHDropdownItem label: 'Remove Column')
						when: #clicked send: #removeColumn to: self grid)
					)));
		add: (PHPage row
			add: self functionWindow);
		add: (self grid).			
	
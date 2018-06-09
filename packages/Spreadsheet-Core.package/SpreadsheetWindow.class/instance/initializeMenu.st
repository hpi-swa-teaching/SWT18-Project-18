initialization
initializeMenu

	self	add: (PHPage row
		add: ((PHButton label: 'Menü')
			attach: (PHDropdown new
				add: ((PHDropdownItem label: 'Add Row')
					when: #clicked send: #addRow to: self grid);
				add: ((PHDropdownItem label: 'Remove Row')
					when: #clicked send: #removeRow to: self grid);
				add: ((PHDropdownItem label: 'Add Column After')
					when: #clicked send: #addColumnAfter to: self grid);
				add: ((PHDropdownItem label: 'Add Column Before')
					when: #clicked send: #addColumnBefore to: self grid);
				add: ((PHDropdownItem label: 'Remove Column')
					when: #clicked send: #removeColumn to: self grid)
				))).	
	
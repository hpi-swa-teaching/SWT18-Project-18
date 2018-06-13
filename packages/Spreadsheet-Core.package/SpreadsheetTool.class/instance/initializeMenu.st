initialization
initializeMenu

	self	add: (PHPage row
		add: ((PHButton label: 'Menü')
			attach: (PHDropdown new
				add: ((PHDropdownItem label: 'Add Row After')
					when: #clicked send: #addRowAfter to: self grid);
				add: ((PHDropdownItem label: 'Add Row Before')
					when: #clicked send: #addRowBefore to: self grid);
				add: ((PHDropdownItem label: 'Remove Row')
					when: #clicked send: #removeRow to: self grid);
				add: ((PHDropdownItem label: 'Add Column After')
					when: #clicked send: #addColumnAfter to: self grid);
				add: ((PHDropdownItem label: 'Add Column Before')
					when: #clicked send: #addColumnBefore to: self grid);
				add: ((PHDropdownItem label: 'Remove Column')
					when: #clicked send: #removeColumn to: self grid)
				));
		add: ((PHButton label: 'Functions')
			attach: (PHDropdown new
				add: ((PHDropdownItem label: 'Sum')
					when: #clickedWithEvent send: #show:function: to: self grid withArguments: {nil.#sum});
				add: ((PHDropdownItem label: 'Add Row Before')
					when: #clicked send: #addRowBefore to: self grid);
				add: ((PHDropdownItem label: 'Remove Row')
					when: #clicked send: #removeRow to: self grid);
				add: ((PHDropdownItem label: 'Add Column After')
					when: #clicked send: #addColumnAfter to: self grid);
				add: ((PHDropdownItem label: 'Add Column Before')
					when: #clicked send: #addColumnBefore to: self grid);
				add: ((PHDropdownItem label: 'Remove Column')
					when: #clicked send: #removeColumn to: self grid)
				))).
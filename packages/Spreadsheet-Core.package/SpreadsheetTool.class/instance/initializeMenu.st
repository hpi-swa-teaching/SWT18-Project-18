initialization
initializeMenu

	self	add: (PHPage row
		add: ((PHButton label: 'Add/Remove')
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
				add: ((PHDropdownItem label: 'Count')
					when: #clickedWithEvent send: #show:function: to: self grid withArguments: {nil.#count});
				add: ((PHDropdownItem label: 'Average')
					when: #clickedWithEvent send: #show:function: to: self grid withArguments: {nil.#average});
				add: ((PHDropdownItem label: 'Min')
					when: #clickedWithEvent send: #show:function: to: self grid withArguments: {nil.#min});
				add: ((PHDropdownItem label: 'Max')
					when: #clickedWithEvent send: #show:function: to: self grid withArguments: {nil.#max});
				add: ((PHDropdownItem label: 'Custom')
					when: #clickedWithEvent send: #show:function: to: self grid withArguments: {nil.''})	
				));
		add: ((PHButton label: 'File')
			attach: (PHDropdown new
				add: ((PHDropdownItem label: 'New')
					when: #clicked send: #newFile to: self);
				add: ((PHDropdownItem label: 'Import STON')
					when: #clicked 
					send: #importSTON 
					to: self);
				add: ((PHDropdownItem label: 'Export STON')
					when: #clicked 
					send: #exportSTON 
					to: self)
				));
		add: ((PHButton label: 'Celltype')
			attach: (PHDropdown new
				add: ((PHDropdownItem label: 'Number')
					when: #clicked send: #changeCellsTypesTo: to: self grid withArguments: {#number});
				add: ((PHDropdownItem label: 'Text')
					when: #clicked send: #changeCellsTypesTo: to: self grid withArguments: {#text});
				add: ((PHDropdownItem label: 'Date')
					when: #clicked send: #changeCellsTypesTo: to: self grid withArguments: {#date});
				add: ((PHDropdownItem label: 'Time')
					when: #clicked send: #changeCellsTypesTo: to: self grid withArguments: {#time});
				add: ((PHDropdownItem label: 'Currency')
					when: #clicked send: #changeCellsTypesTo: to: self grid withArguments: {#currency});
				add: ((PHDropdownItem label: 'Percentage')
					when: #clicked send: #changeCellsTypesTo: to: self grid withArguments: {#percentage});
				add: ((PHDropdownItem label: 'No Type')
					when: #clicked send: #changeCellsTypesTo: to: self grid withArguments: {#nat})
				));
		add: ((PHButton label: 'Diagram')
			attach: (PHDropdown new
				add: ((PHDropdownItem label: 'LineChart')
					when: #clicked send: #createDiagram to: self grid selection)
				))).
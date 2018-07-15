initialization
initializeFileMenu: aPage

	aPage add: ((PHButton label: 'File')
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
			))
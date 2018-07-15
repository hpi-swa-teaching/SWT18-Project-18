initialization
initializeTypeMenu: aPage

	aPage add: ((PHButton label: 'Celltype')
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
			))
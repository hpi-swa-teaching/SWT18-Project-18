initialization
initializeFunctionMenu: aPage

	aPage add: ((PHButton label: 'Functions')
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
			))
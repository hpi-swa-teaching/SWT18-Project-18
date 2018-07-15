initialization
fontSizeDropdown 

	| dropdown |
	dropdown := PHDropdown new.
	{12. 16. 20. 24. 28. 32 } do: [ :number |
		dropdown add: ((PHDropdownItem label: number asString)
				when: #clicked send: #changeFontSize: to: self with: number)].
	^ dropdown
	
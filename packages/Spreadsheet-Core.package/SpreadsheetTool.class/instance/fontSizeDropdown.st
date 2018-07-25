initialization
fontSizeDropdown 

	| dropdown |
	dropdown := PHDropdown new.
	self fontSizes do: [ :number |
		dropdown add: ((PHDropdownItem label: number asString)
				when: #clicked send: #changeFontSize: to: self with: number)].
	^ dropdown
	
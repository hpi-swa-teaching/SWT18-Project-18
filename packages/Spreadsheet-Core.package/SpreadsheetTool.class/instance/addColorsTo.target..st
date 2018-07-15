initialization
addColorsTo: aDropdown target: aSymbol

	{ Color red. Color blue. } do: [ :color |
		aDropdown
			add: ((PHDropdownItem label: '')
				color: color;
				when: #clicked send: aSymbol to: self grid with: color )]
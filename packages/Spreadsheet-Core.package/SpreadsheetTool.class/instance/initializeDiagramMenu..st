initialization
initializeDiagramMenu: aPage

	aPage add: ((PHButton label: 'Diagram')
		attach: (PHDropdown new
			add: ((PHDropdownItem label: 'LineChart')
				when: #clicked send: #createDiagram: to: self grid selection withArguments: { #SWLineChart});
			add: ((PHDropdownItem label: 'PieChart')
				when: #clicked send: #createDiagram: to: self grid selection withArguments: { #SWPieChart});
			add: ((PHDropdownItem label: 'BarGraph')
				when: #clicked send: #createDiagram: to: self grid selection withArguments: { #SWBarGraph});
			add: ((PHDropdownItem label: 'ScatterPlot')
				when: #clicked send: #createDiagram: to: self grid selection withArguments: { #SWScatterPlot})
			)).
initialization
initializeMenuPage

	| page |
	
	page := PHPage row.
	self 
		initializeFileMenu: page;
		initializeAddRemoveMenu: page;
		initializeFunctionMenu: page;
		initializeTypeMenu: page;
		initializeDiagramMenu: page;
		add: page.
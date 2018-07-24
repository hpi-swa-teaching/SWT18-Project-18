initialization
initializeMenu

	| page group |
	
	page := PHPage row.
	group := PHButtonGroup new.
	self 
		initializeFileMenu: group;
		initializeAddRemoveMenu: group;
		initializeFunctionMenu: group;
		initializeTypeMenu: group;
		initializeDiagramMenu: group.
	page add: group.
	self
		initializeStylePage: page;
		add: page.
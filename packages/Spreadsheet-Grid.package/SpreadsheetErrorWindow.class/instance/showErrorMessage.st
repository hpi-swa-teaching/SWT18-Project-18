as yet unclassified
showErrorMessage
	
	self add: ((PHPage column) 
		add: ((PHAlert text: self exception description)
			addStyleClass: #danger
			yourself);
		add: ((PHButton text: 'Open Squeak Debugger')
			when: #clicked send: #openDebugger to: self)).
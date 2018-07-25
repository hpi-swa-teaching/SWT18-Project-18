initialization
createContent
	^ (PHPage column) 
		add: (PHLabel small: 'Please type in the cell to connect to');
		add: (PHTextArea placeholder: 'e.g A1');
		add: (PHLabel small: 'Please type in the function to call on the morph');
		add: (PHTextArea newWithValue: '= morph');
		yourself.
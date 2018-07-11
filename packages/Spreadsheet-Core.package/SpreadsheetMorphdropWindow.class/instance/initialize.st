initialization
initialize
	
	| functionInput submitInput tagsInput|
	super initialize.
	
	functionInput := PHTextEntry new.
	submitInput := PHButton new text: 'Submit'.
	tagsInput := PHWritableTagList new inputPlaceholder: 'Add Parameter'.
	
	self withLayout;
		vertical: true;
		add: functionInput;
		add: tagsInput;
		add: submitInput.
		
	submitInput when: #clicked send: #saveData:and: to: self withArguments: {(functionInput text).(tagsInput tags)}.
	
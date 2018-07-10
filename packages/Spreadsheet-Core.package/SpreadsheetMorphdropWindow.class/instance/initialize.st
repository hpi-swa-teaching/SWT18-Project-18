as yet unclassified
initialize
	
	| functionInput submitInput|
	super initialize.
	
	functionInput := PHTextArea new.
	submitInput := PHButton new text: 'Submit'.
	
	self withLayout;
		vertical: true;
		add: functionInput;
		add: (PHWritableTagList new inputPlaceholder: 'Add Parameter');
		add: submitInput.
	
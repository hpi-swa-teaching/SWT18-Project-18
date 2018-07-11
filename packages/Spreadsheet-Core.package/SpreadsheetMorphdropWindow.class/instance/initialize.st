initialization
initialize
	
	|  submitInput content |
	super initialize.
	
	functionInput := PHTextArea new.
	cellInput := (PHTextArea placeholder: 'e.g. A1').
	submitInput := PHButton new text: 'Submit'.
	"tagsInput := PHWritableTagList new inputPlaceholder: 'Add Parameter'."
	
	content := (PHPage column) 
		add: (PHLabel small: 'Please type in the cell to connect to');
		add: cellInput;
		add: (PHLabel small: 'Please type in the function to call on the morph');
		add: functionInput;
		yourself.
	"dialog content: (PHPage new withPadding; add: ((PHButton text: 'Accept') when: #clicked send: #accept: to: dialog with: nil))."
	
	self withLayout;
		vertical: true;
		add: content;
		add: submitInput.
	
	functionInput text: '= morph'.
	submitInput when: #clicked send: #acceptContents to: self
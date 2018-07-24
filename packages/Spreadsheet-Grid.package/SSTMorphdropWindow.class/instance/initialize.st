initialization
initialize
	super initialize.
	self withLayout;
		vertical: true;
		add: self createContent;
		add: (PHButton new text: 'Submit'; when: #clicked send: #acceptContents to:self).
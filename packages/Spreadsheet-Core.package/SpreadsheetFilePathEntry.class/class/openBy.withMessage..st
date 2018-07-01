as yet unclassified
openBy: aClient withMessage: aMessage

	(self title: 'Enter File Path') 
		client: aClient;
		message: aMessage;
		position: aClient position x + 50 @ aClient position y + 50;
		openFor: aClient.
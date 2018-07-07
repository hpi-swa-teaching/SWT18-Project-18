as yet unclassified
showErrorMessage
	
	self add: ((PHAlert text: message)
		addStyleClass: #danger
		yourself).
	self openInWindowLabeled: 'Error'
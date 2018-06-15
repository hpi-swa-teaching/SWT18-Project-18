as yet unclassified
keyStroke: evt

	self context text: ''.
	self context state: (SpreadsheetStateActive with: context).
	self context performParentMethod: #keyStroke: withArguments: evt.
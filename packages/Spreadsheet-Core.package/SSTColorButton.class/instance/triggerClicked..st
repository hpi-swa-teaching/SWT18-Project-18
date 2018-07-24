as yet unclassified
triggerClicked: anEvent

	(self owner) owner delete.
	self triggerEvent: #closed.
	super triggerClicked: anEvent
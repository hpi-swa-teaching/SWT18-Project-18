as yet unclassified
show: anException

	^ (self title: 'Error')
		exception: anException;
		showErrorMessage;
		yourself
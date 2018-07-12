as yet unclassified
show: anException

	^ (self new 
		errorClass: anException class name;
		message: anException description;
		showErrorMessage)
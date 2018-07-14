notifying
showError: anException

	| dialog |
	
	dialog := SSTErrorWindow show: anException.
	dialog openFor: self grid.
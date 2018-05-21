accessing
removeColumn 
	
	self columns removeLast.
	self rows do: [ :aRow |  aRow cells removeLast delete].
layout
removeColumn 
	
	self columns last remove.
	self columns removeLast.
	self rows do: [ :aRow |  aRow cells removeLast saveDelete]
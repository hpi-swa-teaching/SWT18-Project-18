layout
removeColumn 
	
	self columns removeLast.
	self rows do: [ :aRow |  aRow cells removeLast saveDelete].
	self redraw
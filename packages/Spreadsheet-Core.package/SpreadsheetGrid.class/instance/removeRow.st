layout
removeRow
	
	self rows last remove.
	self rows removeLast.
	self columns do: [ :aColumn |  aColumn cells removeLast saveDelete].
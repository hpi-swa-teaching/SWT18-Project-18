layout
removeRow
	
	(self rows size <= 1) ifTrue: [^self].
	self rows last remove.
	self rows removeLast.
	self columns do: [ :aColumn |  aColumn cells removeLast saveDelete].
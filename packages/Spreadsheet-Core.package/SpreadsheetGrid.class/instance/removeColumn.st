layout
removeColumn 
	
	(self columns size <= 1) ifTrue: [^self].
	self columns last remove.
	self columns removeLast.
	self rows do: [ :aRow |  aRow cells removeLast saveDelete]
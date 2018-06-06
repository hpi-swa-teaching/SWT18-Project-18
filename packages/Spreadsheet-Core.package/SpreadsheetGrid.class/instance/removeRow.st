layout
removeRow
	
		| aRowIndex |
	
	(self columns size <= 1) ifTrue: [ ^ self] .
	self selection singleRowSelected 
		ifTrue: [ aRowIndex := self selection cells asOrderedCollection first row index ]
		ifFalse: [ aRowIndex := self rows last index ].
	(self rows at: aRowIndex) remove.
	self rows removeAt: aRowIndex.
	self columns do: [ :aColumn |  (aColumn cells removeAt: aRowIndex) saveDelete ].
	self rows do: [ :aRow | aRow updateIndex ]
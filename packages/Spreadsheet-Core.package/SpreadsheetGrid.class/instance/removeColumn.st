layout
removeColumn 
	
	| colIndex |
	
	(self columns size <= 1) ifTrue: [ ^ self] .
	self selection singleColumnSelected 
		ifTrue: [ colIndex := self selection cells asOrderedCollection first column index ]
		ifFalse: [ colIndex := self columns last index ].
	(self columns at: colIndex) remove.
	self columns removeAt: colIndex.
	self rows do: [ :aRow |  (aRow cells removeAt: colIndex) saveDelete ].
	self columns do: [ :aColumn | aColumn 	updateIndex ]
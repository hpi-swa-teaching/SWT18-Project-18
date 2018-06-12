managing columns
removeColumnWithIndex: anIndex
	
	(self columns size < anIndex) ifTrue: [^ self] .
	(self columns at: anIndex) remove.
	self columns removeAt: anIndex.
	self columns do: [:aColumn | aColumn updateIndex].
	self rows do: [:aRow |  (aRow cells removeAt: anIndex) delete].
managing columns
removeColumnWithIndex: anIndex
	
	(self columns size < anIndex) ifTrue: [^ self] .
	self columns removeAt: anIndex.
	self columns do: [:aColumn | aColumn updateIndex].
	self rows do: [:aRow |  aRow cells removeAt: anIndex].
	self layoutChanged.
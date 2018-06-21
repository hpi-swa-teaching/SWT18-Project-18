managing rows
removeRowWithIndex: anIndex
	
	(self rows size < anIndex) ifTrue: [^ self].
	self rows removeAt: anIndex.
	self rows do: [:aRow | aRow updateIndex].
	self	columns do: [:aColumn |  aColumn cells removeAt: anIndex].
	self layoutChanged.
	self redraw.
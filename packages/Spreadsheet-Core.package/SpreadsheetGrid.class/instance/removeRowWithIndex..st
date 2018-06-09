managing rows
removeRowWithIndex: anIndex
	
	(self rows size < anIndex) ifTrue: [^ self].
	(self rows at: anIndex) remove.
	self rows removeAt: anIndex.
	self rows do: [:aRow | aRow updateIndex].
	self	columns do: [:aColumn |  (aColumn cells removeAt: anIndex) saveDelete].
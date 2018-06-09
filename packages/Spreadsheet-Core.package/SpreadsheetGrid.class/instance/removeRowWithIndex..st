layout
removeRowWithIndex: anInteger
	
	(self rows size < anInteger) ifTrue: [^ self].
	(self rows at: anInteger) remove.
	self rows removeAt: anInteger.
	self	columns do: [:aColumn |  (aColumn cells removeAt: anInteger) saveDelete].
	self rows do: [:aRow | aRow updateIndex].
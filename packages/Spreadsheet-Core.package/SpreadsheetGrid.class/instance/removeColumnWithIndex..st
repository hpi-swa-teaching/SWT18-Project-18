layout
removeColumnWithIndex: anInteger
	
	(self columns size < anInteger) ifTrue: [^ self] .
	(self columns at: anInteger) remove.
	self columns removeAt: anInteger.
	self rows do: [:aRow |  (aRow cells removeAt: anInteger) saveDelete].
	self columns do: [:aColumn | aColumn updateIndex]
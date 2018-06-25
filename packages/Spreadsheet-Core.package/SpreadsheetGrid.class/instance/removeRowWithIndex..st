managing rows
removeRowWithIndex: anIndex
	
	| positionCollection |
	
	positionCollection := self getSelectionPositions.
	
	(self rows size < anIndex) ifTrue: [^ self].
	(self rows removeAt: anIndex) removeCells.
	self rows do: [:aRow | aRow updateIndex].
	self	columns do: [:aColumn |  aColumn cells removeAt: anIndex].
		
	self updateSelection: positionCollection by: (0@(-1)).
	self layoutChanged.
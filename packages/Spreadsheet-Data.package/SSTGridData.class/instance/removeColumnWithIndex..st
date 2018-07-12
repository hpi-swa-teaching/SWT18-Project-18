accessing columns
removeColumnWithIndex: anIndex
	
	| positionCollection |
	
	positionCollection := self grid getSelectionPositions.
	
	(self columns size < anIndex) ifTrue: [^ self] .
	(self columns removeAt: anIndex) removeCells.
	self columns do: [:aColumn | aColumn updateIndex].
	self rows do: [:aRow |  aRow cells removeAt: anIndex].
	
	self grid updateSelection: positionCollection by: (-1@0).
	
	self update.
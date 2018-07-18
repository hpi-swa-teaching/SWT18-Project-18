as yet unclassified
isConnectedTo: aCell
	
	(aCell = self) ifTrue: [  ^ true ].
	self observingCells do: [ :cell | (cell isConnectedTo: aCell) ifTrue: [ ^ true ]].
	self observingCells do: [ :cell | (cell isConnectedTo: aCell) ifTrue: [ ^ true ]].
	^ false
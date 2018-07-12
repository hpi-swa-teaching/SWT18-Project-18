initialization
createDiagram: aDiagramm

	|cellContents data tempArray graph diagram|
	
	data := SWDataUnlabeled create.
	
	aDiagramm = #SWLineChart ifTrue: [ diagram := SWLineChart create ].
	aDiagramm = #SWPieChart ifTrue: [ diagram := SWPieChart create ].
	aDiagramm = #SWBarGraph ifTrue: [ diagram := SWBarGraph create ].
	aDiagramm = #SWScatterPlot ifTrue: [ diagram := SWScatterPlot create ].
	
	cellContents := OrderedCollection new.
	(self cellHeight = 2) ifTrue: [
		| activeCell |
		activeCell := self topLeftCell.
		1 to: self cellWidth do: [ :i |
			cellContents add: activeCell text.
			cellContents add: activeCell verticalSuccessor text. 
			activeCell := activeCell horizontalSuccessor.]].
	
	((self cellWidth = 2) and: [self cellHeight ~= 2])ifTrue: [
		| activeCell |
		activeCell := self topLeftCell.
		1 to: self cellHeight do: [ :i |
			cellContents add: activeCell text.
			cellContents add: activeCell horizontalSuccessor text. 
			activeCell := activeCell verticalSuccessor.]].
	
	cellContents pairsDo: [:a :b | 
		tempArray := Array with: a asNumber with: b asNumber.
		data add: tempArray.].
	graph :=  (SWDiagram new visualize: data with: diagram) openInWindow.
	
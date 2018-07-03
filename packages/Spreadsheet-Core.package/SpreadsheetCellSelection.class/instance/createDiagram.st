initialization
createDiagram

	|cellContents data tempArray graph|
	
	data := SWDataUnlabeled create.
	
	cellContents := cells collect: [:ele | ele text].
	cellContents pairsDo: [:a :b | 
		tempArray := Array with: a asNumber with: b asNumber.
		data add: tempArray.].
	graph :=  (SWDiagram new visualize: data with: SWLineChart create) openInWindow.
	Transcript show: data dataToString. 
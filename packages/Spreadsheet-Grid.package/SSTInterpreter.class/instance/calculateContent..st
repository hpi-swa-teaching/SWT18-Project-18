as yet unclassified
calculateContent: aCell

	| resultAsString |

	resultAsString := (self calculateResult: aCell calcRepresentation for: aCell).

	(aCell cellType correspondingRegex matches: resultAsString) ifTrue: [
		resultAsString := aCell cellType formatCellContent: resultAsString]
	ifFalse: [
		(resultAsString isEmpty) ifFalse: [
			aCell cellType: (self grid flyweightFactory getFlyweightFor: #nat)]
	].
	
	^ resultAsString.
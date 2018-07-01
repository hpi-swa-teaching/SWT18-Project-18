as yet unclassified
calculateContent: aCell

	| resultAsString |

	resultAsString := (self calculateResult: aCell calcRepresentation for: aCell).
	(aCell cellType) ifNotNil: [
		(aCell cellType correspondingRegex matches: resultAsString) ifTrue: [
			resultAsString := aCell cellType formatCellContent: resultAsString].
	].
	aCell text: resultAsString.
as yet unclassified
calculateContent: aCell text: aText

	| resultAsString |

	aCell calcRepresentation: aText.
	resultAsString := (self calculateResult: aText for: aCell).
	(aCell cellType) ifNotNil: [
		(aCell cellType correspondingRegex matches: resultAsString) ifTrue: [
			resultAsString := aCell cellType formatCellContent: resultAsString].
	].
	aCell text: resultAsString.
	self notifyDependents: aCell
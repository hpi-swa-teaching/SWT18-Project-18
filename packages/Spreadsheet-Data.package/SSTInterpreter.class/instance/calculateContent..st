as yet unclassified
calculateContent: aCell

	| resultAsString |

	resultAsString := (self calculateResult: aCell calcRepresentation for: aCell).
	resultAsString := self formatedString: resultAsString for: aCell.
	^ resultAsString
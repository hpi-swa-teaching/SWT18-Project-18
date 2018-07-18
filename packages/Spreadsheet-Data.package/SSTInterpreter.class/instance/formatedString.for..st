as yet unclassified
formatedString: aString for: aCell

	| formatedString |
	
	(aCell cellType correspondingRegex matches: aString) ifTrue: [
		formatedString := aCell cellType formatCellContent: aString]
	ifFalse: [
		formatedString := aString.
		aCell cellType: (self grid flyweightFactory getFlyweightFor: #nat)
	].
	^ formatedString 
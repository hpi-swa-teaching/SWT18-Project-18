accessing
getCellContentForPointCollection: aCollection
	"return a cell collection for a collection of points"
	
	| cellContentCollection cellText |
	cellContentCollection := OrderedCollection new.
	aCollection do: [ :aPoint |
			Transcript show: aPoint.
			Transcript show: 'text:'.
			cellText := (self cellAtRowIndex: aPoint y colIndex: aPoint x) text.
			Transcript show: cellText.
			(cellText) ifNotEmpty: [cellContentCollection add: cellText]].
	^cellContentCollection
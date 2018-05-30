accessing
getCellContentForPointCollection: aCollection
	"return a cell collection for a collection of points"
	
	| cellContentCollection cellText |
	cellContentCollection := OrderedCollection new.
	aCollection do: [ :aPoint |
			cellText := (self cellAtRowIndex: aPoint y colIndex: aPoint x) text.
			(cellText) ifNotEmpty: [cellContentCollection add: cellText]].
	^cellContentCollection

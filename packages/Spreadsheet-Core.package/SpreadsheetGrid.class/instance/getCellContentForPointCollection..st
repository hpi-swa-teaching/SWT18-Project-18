layout
getCellContentForPointCollection: aCollection
	"return a cell collection for a collection of points"
	
	| cellContentCollection singleCell cellText |
	cellContentCollection := OrderedCollection new.
	aCollection do: [ :each |
			singleCell := self cellAtRowIndex: each y colIndex: each x.
			Transcript show: each.
			Transcript show: singleCell contentMorph.
			cellText := singleCell cell contents.
			(cellText) ifNotEmpty: [
					cellContentCollection add: cellText
				]
		]
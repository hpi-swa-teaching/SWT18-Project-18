as yet unclassified
cellContentsFromCollection: aCollection

	^ (aCollection replace: [ :cell | 
		[cell text asNumber asFloatE] on: NumberParserError do: [0]])
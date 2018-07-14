accessing
cellContentsFrom: aString

	^ ((self cellsFrom: aString) replace: [ :cell | 
		[cell text asNumber asFloatE] on: NumberParserError do: [0]])
replace string
replaceCellAccessors: aString

	^ ('cell' asRegex) 
		copy: aString
		translatingMatchesUsing: [ :each | 'self activeCell' ]
accessing
replaceCellAccessors: aString

	^ ('cell' asRegex) 
		copy: aString
		translatingMatchesUsing: [ :each | 'self cell' ]
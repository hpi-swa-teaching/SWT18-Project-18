replace string
replaceGridAccessor: aString

	^ ('grid' asRegex) 
		copy: aString
		translatingMatchesUsing: [ :each | 'self grid' ]
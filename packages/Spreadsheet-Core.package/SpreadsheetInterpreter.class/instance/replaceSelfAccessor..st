replace string
replaceSelfAccessor: aString

	^ ('self' asRegex) 
		copy: aString
		translatingMatchesUsing: [ :each | 'nil' ]
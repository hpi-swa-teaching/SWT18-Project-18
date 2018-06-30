accessing
replaceSelfAccessor: aString

	^ ('[^\w\d](self)[^\w\d]' asRegex) 
		copy: aString
		translatingMatchesUsing: [ :each | 'self' asRegex copy: aString replacingMatchesWith: 'nil' ]
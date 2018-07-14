accessing
text: aString

	super text: aString.
	self content ifNil: [ self content: aString ]
replace string
replaceAccessors: aString 

	| newString |
	
	newString := self replaceSelfAccessor: aString.
	"newString := self replaceGridAccessor: newString.
	newString := self replaceCellAccessors: newString."
	
	^ newString 
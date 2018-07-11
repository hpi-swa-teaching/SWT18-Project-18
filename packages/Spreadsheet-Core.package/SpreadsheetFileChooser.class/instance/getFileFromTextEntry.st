open
getFileFromTextEntry
	
	| directory fileName |
	
	fileName := self textEntry text.
	directory := self morphicView model directory.
	
	ok == true ifFalse: [^ nil].
	directory ifNil: [^ nil].
	fileName ifEmpty: [^ nil].
	^ (directory oldFileNamed: fileName) ifNil:
			[directory readOnlyFileNamed: fileName]

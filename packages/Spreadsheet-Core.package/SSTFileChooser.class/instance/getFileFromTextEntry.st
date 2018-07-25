open
getFileFromTextEntry
	
	| directoryTemp fileNameTemp |
	
	fileNameTemp := self textEntry text.
	directoryTemp := self morphicView model directory.
	
	ok == true ifFalse: [^ nil].
	directoryTemp ifNil: [^ nil].
	fileNameTemp ifEmpty: [^ nil].
	^ (directoryTemp oldFileNamed: fileNameTemp) ifNil:
			[directoryTemp readOnlyFileNamed: fileNameTemp]

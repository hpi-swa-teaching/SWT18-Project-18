managing files
exportSTONTo: aPath

	| data |
	
	data := self grid data.
	data grid: nil.
	
	aPath asReference 
    		fileStreamDo: [ :stream | 
       		STON put: data onStreamPretty: stream ].
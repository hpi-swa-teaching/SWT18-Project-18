managing files
exportSTONTo: aPath

	| data |
	
	data := self grid data.
	data grid: nil.
	
	data columns do: [:column |
		column edgeGrip: nil].
		
	data rows do: [:column |
		column edgeGrip: nil].
	
	aPath asReference 
    		fileStreamDo: [ :stream | 
       		STON put: data onStreamPretty: stream ].
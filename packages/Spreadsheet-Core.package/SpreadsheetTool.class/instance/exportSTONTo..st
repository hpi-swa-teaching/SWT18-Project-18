managing files
exportSTONTo: aPath

	aPath asReference 
    		fileStreamDo: [ :stream | 
       		STON put:  self grid onStreamPretty: stream ].
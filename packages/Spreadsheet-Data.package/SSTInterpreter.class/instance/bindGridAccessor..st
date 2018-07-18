binding
bindGridAccessor: aMethod

	aMethod literals copy withIndexDo: [ :literal :index | 
		((literal isVariableBinding) and: [ literal key = #grid ]) ifTrue: [
			aMethod literalAt: index put: #grid => self grid ]].
	^ aMethod
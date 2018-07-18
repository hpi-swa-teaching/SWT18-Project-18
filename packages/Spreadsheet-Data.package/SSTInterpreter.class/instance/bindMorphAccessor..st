binding
bindMorphAccessor: aMethod

	aMethod literals copy withIndexDo: [ :literal :index | 
		((literal isVariableBinding) and: [ literal key = #morph ]) ifTrue: [
			aMethod literalAt: index put: #morph => cell droppedMorph ]].
	^ aMethod
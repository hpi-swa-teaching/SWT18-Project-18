accessing
dependents
	^ dependents ifNil: [ dependents := OrderedCollection new ]
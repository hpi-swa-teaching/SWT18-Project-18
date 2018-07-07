initialization
textChanged
	
	self dependents do: [ :dependent | dependent update].
	self data ifNotNil: [ self data textChanged: self ]
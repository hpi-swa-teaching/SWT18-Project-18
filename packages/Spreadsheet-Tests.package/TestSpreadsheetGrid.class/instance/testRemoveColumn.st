as yet unclassified
testRemoveColumn

	|rows|
	
	rows := builder columns size.
	builder removeColumn.
	self assert: [builder columns size = ( rows - 1)]

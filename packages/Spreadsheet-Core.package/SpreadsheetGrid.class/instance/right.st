layout
right

	self columns ifEmpty: [^ self markAllLabel right].
	^ self columns last right
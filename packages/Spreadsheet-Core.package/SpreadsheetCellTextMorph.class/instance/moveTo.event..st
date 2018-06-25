editing
moveTo: direction event: evt

	(self cell bottomCell) ifNil: [
		self grid addRowAfter].
	self selection moveToDirectionInBounds: direction.
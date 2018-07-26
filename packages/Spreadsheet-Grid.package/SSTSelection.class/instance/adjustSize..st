helper
adjustSize: someBounds

	self 
		bounds: someBounds;
		adjustActiveCellMorph;
		changed.
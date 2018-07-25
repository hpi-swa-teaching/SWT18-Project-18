edge grips
initializeEdgegrips
		
		"Instance variable data needs to be initialized first."
		
		self rowEdgeGrips: (self data rows collect: [ :row | SSTRowGrip newFor: row on: self]).
		self columnEdgeGrips: (self data columns collect: [ :column | SSTColumnGrip newFor: column on: self])
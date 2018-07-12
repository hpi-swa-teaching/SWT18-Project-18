initialization
initializeEdgegrips
		
		"Instance variable data needs to be initialized first."
		
		self data rows do: [:row |
			self rowEdgeGrips add: (SSTRowGrip newFor: row on: self)].
		self data columns do: [:column |
			self columnEdgeGrips add: (SSTColumnGrip newFor: column on: self)].
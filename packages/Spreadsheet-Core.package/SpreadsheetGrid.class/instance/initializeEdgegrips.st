initialization
initializeEdgegrips
		
		"Instance variable data needs to be initialized first."
		
		self data rows do: [:row |
			self rowEdgegrips add: (SpreadsheetRowGrip newFor: row on: self)].
		self data columns do: [:column |
			self columnEdgegrips add: (SpreadsheetColumnGrip newFor: column on: self)].
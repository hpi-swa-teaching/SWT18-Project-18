accessing
openLabelInSpreadsheet 

	self type = #columnLabel ifTrue: [self openColLabelInSpreadsheet ].
	self type = #rowLabel ifTrue: [self openRowLabelInSpreadsheet ].
initialization
showLabel

	self type == #row ifTrue: [self openRowLabelInSpreadsheet].
	self type == #column ifTrue: [self openColLabelInSpreadsheet].
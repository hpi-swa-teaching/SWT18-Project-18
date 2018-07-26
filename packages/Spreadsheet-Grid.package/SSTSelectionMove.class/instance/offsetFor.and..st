as yet unclassified
offsetFor: originCell and: grabbedCell
	
	| offset x y|
	offset := ( grabbedCell gridPosition - originCell gridPosition).
	x := (offset x clampLow: (selection cellWidth - 1) negated  high: 0).
	y :=  (offset y clampLow: (selection cellHeight - 1) negated  high: 0).
	^ ( x @ y)
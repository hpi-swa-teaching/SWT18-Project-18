as yet unclassified
createArguments 

	| collection point|
	
	collection := ( self cells collect: [ :cell | cell text asInteger ]).
	point := ((collection first) @ (collection second)).
	^ { point }
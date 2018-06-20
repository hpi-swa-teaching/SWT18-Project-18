as yet unclassified
layoutBounds
	"Return the bounds for laying out children of the receiver"
	| inset box |
	
	inset := self padding.
	box := self bounds.
	inset isZero ifTrue:[^box].
	^box insetBy: inset.